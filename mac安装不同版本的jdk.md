1. 使用 [jEnv](https://www.jenv.be/) 管理多个版本的jdk
    1. brew install jenv
    2. zshrc 中导入 jenv配置
    3. source  ~/.zshrc
2. brew tap homebrew/cask-versions  - 添加三方库
3. brew cask install adoptopenjdk8
4. cd /usr/local/Caskroom 目录下找到刚才下载的  adoptopenjdk8 安装包，安装
5. /usr/libexec/java_home -V 查看安装的jdk路径
6. jenv add "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home" - 可能出现找不到 xxx目录，我是手动创建目录解决的。猜测可能是权限问题
7. jenv versions 查看当前安装的版本
8. jenv global 1.8 - 全局的java切换至1.8