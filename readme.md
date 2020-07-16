
### 环境简介

主要包含 `vim` + `ohmyzsh` + `tmux` + `iterm2(macos)`


### iterm2

iterm2 版本为2.3

主要安装了以下字体和主题：
+ git clone https://github.com/powerline/fonts.git
+ git clone https://github.com/dracula/iterm.git


### vim
版本为8.1

主要安装以下几个插件
+ nerdtree
+ nerdtree-git-plugin
+ vim-nerdtree-tabs
+ vim-airline
+ vim-airline-themes
+ tagbar
+ vim-cursorword
+ indentLine
+ vim-code-dark
+ vim-fugitive
+ auto-pairs
+ nerdcommenter
+ coc.nvim

主要使用`molokai.vim`配色方案

coc主要使用了以下语言的补全：
+ coc-python
+ coc-clangd


coc 项目地址：`https://github.com/neoclide/coc.nvim/wiki`


#### 关于cland的安装
如果是mac的话， 默认带有 `clangd`

如果其他平台需要手动进行编译, 可以使用`build-clangd.sh`直接进行编译

需要gcc最低是5.1 所以可能需要升级gcc
```
升级gcc可参考:https://blog.csdn.net/chenjia6605/article/details/82757568
在升级gcc之前可能需要升级链接器， 下载地址为：https://ftp.gnu.org/gnu/binutils/
```
#### python安装
使用miniconda进行安装
```
https://docs.conda.io/en/latest/miniconda.html
```


### tmux
我的配置主要是将 `bind-key` 改为`ctrl + a`

分屏键：
`ctrl+a + |`
`ctrl+a + -`

`ctrl+a + 方向键`： 光标在窗口移动

配置文件: `.tmux.conf`


### ohmyzsh


安装：
1.
```bash
apt install zsh
sudo yum update && sudo yum -y install zsh
```
2.
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

我配置的插件有：
```
plugins=(git node npm yarn docker encode64 github pip python virtualenv extract colored-man-pages screen web-search zsh-             autosuggestions)
```

```
#高亮插件
 sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting

```

常用主题有：
+ kay
+ dracula 配合iterm2
+ agnoster


