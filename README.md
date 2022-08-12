# RPi-7inch-DSI

## 支持列表

|   🦄  |    32-bit     |   64-bit     |
| :---: | :-----------: | :----------: |
|  RPi3 |    /  |  /   |
|  RPi4 |    5.15.32    |   5.15.32    |

## 使用方法

1. 在[树莓派官网](https://www.raspberrypi.com/software/operating-systems/)下载系统镜像到PC上。

2. TF卡连接到PC，使用[Raspberry Pi Imager](https://www.raspberrypi.com/software/)等软件烧写系统镜像。

3. 烧写完成后，将TF卡接入到树莓派上，并启动树莓派，登录树莓派的终端（可以将树莓派接到HDMI显示器或用ssh远程登录）。

4. 下载驱动

    ``` bash
    git clone --depth=1 -b RPi-7inch-DSI https://github.com/EchoHeim/RPi-Linux.git
    ```
    
5. 安装驱动

    ``` bash
    cd RPi-Linux
    sudo ./install.sh
    ```

> 注：以上步骤需要确保树莓派可以正常连接到互联网。

5. 等待系统重启，即可正常显示和触摸。
