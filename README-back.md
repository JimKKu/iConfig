# Ubuntu | 配置说明

> 一些配置：zimfw(zsh)、tmux、fzf、ranger、lazygit ........

## 1. 安装 zsh & zimfw & 插件

```bash
## 安装 ZSH
apt install zsh

## 切换 ZSH
chsh -s /bin/zsh

## 安装 zimfw | 国内服务
curl -fsSL http://sh.jhub.pro/shells/zimfw/install.sh | zsh
```

<sup>部分第三方软件需要在设置中指定shell位置</sup>

**安装 zimfw 插件**

```bash
cat >> ~/.zimrc << EOF
# JimKKu Config
zmodule magicmace
zmodule prompt-pwd
zmodule ssh
EOF

zimfw install
```

## 2. 安装 tmux 并配置

```bash
# 安装 tmux
apt install tmux

## 配置文件 | 国内服务
wget -P ~/.config/tmux/ http://sh.jhub.pro/conf/tmux/tmux.conf

## 加载配置
cat >> ~/.zshrc << EOF
# JimKKu | tmux conf
tmux source ~/.config/tmux/tmux.conf
EOF

source ~/.zshrc
```

