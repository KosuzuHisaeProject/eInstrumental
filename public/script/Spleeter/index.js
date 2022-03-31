const fs = require('fs')
const {app} = require('electron')
const exec = require('child_process').exec

const getFileNameWithExt = (path) => {
    const pos1 = path.lastIndexOf('/')
    const pos2 = path.lastIndexOf('\\')
    const pos = Math.max(pos1, pos2)
    if (pos < 0)
        return path
    else
        return path.substring(pos + 1)
}
const getFileName = (path) => {
    const pos1 = path.lastIndexOf('/')
    const pos2 = path.lastIndexOf('\\')
    const pos = Math.max(pos1, pos2)
    if (pos < 0) {
        return path
    } else {
        let tempPath = path.substring(pos + 1)
        return tempPath.substring(0, tempPath.lastIndexOf('.'))
    }
}
const Spleeter = {
    exec(filePath, onSpleeterProgress, onSpleeterSuccess) {
        const path = app.getAppPath().replace('/app.asar', '').replace('\\app.asar', '')
        const outFilePath = filePath.replace(getFileNameWithExt(filePath), getFileName(filePath))
        const prop = `--overwrite -m 2stems-16kHz -o "${outFilePath}.wav"`
        const child = exec(`"${path}/libs/Spleeter/Spleeter.exe" ${prop} "${filePath}"`)
        child.stdout.on('data', (data) => {
            const reg = RegExp(/[0-9]+\.[0-9][0-9]%/)
            if (reg.test(data)) {
                const progress = Number(reg.exec(data)[0].replace('%', ''))
                onSpleeterProgress(progress)
            }
        })
        child.on('close', (data) => {
            fs.rename(`${outFilePath}.vocals.wav`, `${outFilePath}.人声.wav`, () => {
            })
            fs.rename(`${outFilePath}.accompaniment.wav`, `${outFilePath}.伴奏.wav`, () => {
            })
            onSpleeterSuccess(`${outFilePath}.人声.wav`, `${outFilePath}.伴奏.wav`)
        })
    }
}

module.exports = Spleeter
