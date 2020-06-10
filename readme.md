

### 环境简介

主要包含 `vim` + `ohmyzsh` + `tmux`


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

#### 关于cland的安装
如果是mac的话， 默认带有 `clangd`

如果其他平台需要手动进行编译

需要gcc最低是5.1 所以可能需要升级gcc
```
升级gcc可参考:https://blog.csdn.net/chenjia6605/article/details/82757568
在升级gcc之前可能需要升级链接器， 下载地址为：https://ftp.gnu.org/gnu/binutils/
```

这里有clangd编译时需要的安装包下载地址：
```
https://releases.llvm.org/8.0.0/llvm-8.0.0.src.tar.xz
https://releases.llvm.org/8.0.0/cfe-8.0.0.src.tar.xz
https://releases.llvm.org/8.0.0/compiler-rt-8.0.0.src.tar.xz
https://releases.llvm.org/8.0.0/libcxx-8.0.0.src.tar.xz
https://releases.llvm.org/8.0.0/libcxxabi-8.0.0.src.tar.xz
https://releases.llvm.org/8.0.0/clang-tools-extra-8.0.0.src.tar.xz
```

具体可参考以下博客：
```
https://www.freesion.com/article/103834002/
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



