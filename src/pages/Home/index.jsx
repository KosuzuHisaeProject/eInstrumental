import {message, Progress, Upload} from 'antd'
import {InboxOutlined} from '@ant-design/icons'
import {useState} from 'react'
import styles from './index.module.scss'

import wait from './image/wait.png'
import success from './image/success.png'
import background from './image/background.png'

const ipcRenderer = window.ipcRenderer
const {Dragger} = Upload


const Home = () => {
    const [progress, setProgress] = useState(0)
    const customRequest = (options) => {
        const {onProgress, onError, onSuccess, data, filename, file, withCredentials, action, headers} = options

        const ext = file.name.substring(file.name.lastIndexOf('.') + 1)
        const isCanUse = ext === 'mp3' || ext === 'mp4' || ext === 'wav' || ext === 'flv'
        if (!isCanUse) {
            message.error('仅支持格式: wav mp3 mp4 flv').then()
            return
        }

        ipcRenderer.send('Spleeter', file.path)
        ipcRenderer.on('onSpleeterProgress', (event, progress) => {
            setProgress(progress)
            onProgress({percent: progress})
        })
        ipcRenderer.once('onSpleeterSuccess', (event, vocalsFilePath, accompanimentFilePath) => {
            setProgress(100)
            onSuccess()
            message.success(`伴奏已生成`, 5, () => {
                setProgress(0)
            }).then()
            message.success(`${accompanimentFilePath}`, 5, () => {
                setProgress(0)
            }).then()
        })
    }

    return (
        <div className={styles.main}>
            <div className="title">绘·伴奏</div>
            <Progress className="progress" type="circle" percent={progress} />
            <Dragger
                multiple={false}
                customRequest={customRequest}
                showUploadList={false}
                disabled={progress > 0 && progress < 100}
                className="dragbox"
            >
                <p className="ant-upload-drag-icon">
                    <InboxOutlined />
                </p>
                <p className="ant-upload-text">点击选择文件或将文件拖到此处</p>
                <p className="ant-upload-hint">
                    支持格式: wav mp3 mp4 flv
                </p>
            </Dragger>
            <div className="ee">
                {progress > 0 && progress < 100 ? (
                    <img src={wait} alt="" />
                ) : (
                    <img src={success} alt="" />
                )}
            </div>
            <div className="background">
                <img src={background} alt="" />
            </div>
        </div>
    )
}
export default Home
