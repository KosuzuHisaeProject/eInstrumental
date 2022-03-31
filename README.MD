# 绘·伴奏
[![GitHub release](https://img.shields.io/github/release/KosuzuHisaeProject/eInstrumental.svg)](https://github.com/KosuzuHisaeProject/eInstrumental/releases/latest) [![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/KosuzuHisaeProject/eInstrumental/master/LICENSE)
> 基于 [Spleeter](https://github.com/deezer/spleeter) 的AI伴奏提取器

## 1. 简介
绘·伴奏(eInstrumental)是一款基于 [Spleeter](https://github.com/deezer/spleeter) 的AI伴奏提取器，使用了 [wudicgi](https://blog.wudilabs.org/) 开发的 [SpleeterMsvcExe](https://github.com/wudicgi/SpleeterMsvcExe/) 作为内核，使用了 [electron](https://github.com/electron/electron/) 作为GUI框架，目前仅支持 `Windows x64` 平台。

## 2. 教程
**使用前请安装[支持库](https://github.com/KosuzuHisaeProject/eInstrumental/releases/download/1.0.0/VC_Redist_x64.exe)，避免出现找不到支持库的问题**

下载最新的 [release](https://github.com/KosuzuHisaeProject/eInstrumental/releases/latest) 版本程序，解压到任意位置。
运行根目录下 `绘·伴奏.exe`，在GUI窗口中选择需要处理的音频或者将音频文件拖入窗口内。

![GUI](https://cdn.jsdelivr.net/gh/KosuzuHisaeProject/eInstrumental@latest/GUI.png)

系统处理完成后，会在源文件相同目录下输出 `源文件名.人声.wav` 和  `源文件名.伴奏.wav` 两个文件。

![Example](https://cdn.jsdelivr.net/gh/KosuzuHisaeProject/eInstrumental@latest/Example.png)

## 3. 致谢
- 感谢 [Deezer](https://www.deezer.com/) 开源了 [Spleeter](https://github.com/deezer/spleeter) 项目。
- 感谢 [wudicgi](https://blog.wudilabs.org/) 开源了 [SpleeterMsvcExe](https://github.com/wudicgi/SpleeterMsvcExe/) 项目。
- 感谢 [Guillaume Vincke](https://github.com/gvne) 开源了 [spleeterpp](https://github.com/gvne/spleeterpp) 项目。本项目的使用了其提供的 Spleeter 模型文件。
