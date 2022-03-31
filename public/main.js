const {app, BrowserWindow, ipcMain} = require('electron')
const path = require('path')
const Spleeter = require('./script/Spleeter')

function createWindow() {
    const win = new BrowserWindow({
        width: 800,
        height: 600,
        center: true,
        resizable: false,
        maximizable: false,
        icon: path.join(__dirname, 'favicon.ico'),
        webPreferences: {
            nativeWindowOpen: true,
            nodeIntegration: true,
            contextIsolation: false,
            preload: path.join(__dirname, 'preload.js'),
        }
    })

    win.removeMenu()

    if (app.isPackaged) {
        win.loadFile('index.html').then()
    } else {
        win.loadURL('http://localhost:3000').then()
        win.webContents.openDevTools()
    }

    ipcMain.on('Spleeter', (event, filePath) => {
        Spleeter.exec(filePath, (progress) => {
            win.webContents.send('onSpleeterProgress', progress)
        }, (vocalsFilePath, accompanimentFilePath) => {
            win.webContents.send('onSpleeterSuccess', vocalsFilePath, accompanimentFilePath)
        })
    })
}

app.whenReady().then(() => {
    createWindow()

    app.on('activate', () => {
        if (BrowserWindow.getAllWindows().length === 0) {
            createWindow()
        }
    })
})

app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit()
    }
})

