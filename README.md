# EIE331
MUST-EIE331

# 实验开发板
![这样使用](https://github.com/xiaoleiren/EIE331/blob/main/images/TM4C123G.png)

# 开发和调试经验分享

谢谢我们班级的梁朋同学分享的关于“CCS创建工程的经验”

谢谢我们班的王晟坤同学分享的关于“AMD处理器的PC在编译过程中遇到的报错和解决方案”


## CH340C模块连接（用于调试）

将CH340C USB转串口模块连接到计算机，以便通过串口调试ESP8266的通信。CH340C模块的TX和RX引脚也可以与ESP8266的RX和TX引脚连接，但在TIVA C和CH340C之间需要切换，避免冲突

![这样使用](https://github.com/xiaoleiren/EIE331/blob/main/images/CH340C%2BESP8266%E9%80%9A%E4%BF%A1.jpg)

