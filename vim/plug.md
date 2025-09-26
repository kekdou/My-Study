### vim-plug

专为vim设计的轻量、快速的插件管理器，解决了插件难安装，难管理的问题（没有的话需要手动下载文件、解压，然后放在正确的位置，非常麻烦，且难以管理）  

在.vimrc文件中加上 `plug#begin()`和 `plug#end()`两个函数，然后将想安装的插件放在这两个函数之间  

- `:PlugInstall`：读取安装声明，自动下载插件
- `:PlugUpdate`：检查下载并进行更新
- `:PlugClean`：移除声明外的插件
- `:PlugStatus`：显示插件的安装状态以及是否懒加载等

懒加载：  
如果想让vim启动的更快，可以在Plug声明之后加上 `{ 'on': '...'}`，来指定插件在什么命令下被加载  

---

### NERDTree

将文件系统以可视化树状结构展示在一个新的vim窗口  

使用 `:NERDTree`打开或关闭树窗口  
- 使用 `j`、`k`进行导航
- `i`/ `s`/`t`：在水平分割、垂直分割或新标签页中打开文件
- `o`/ `<CR>`：在当前窗口打开文件，或展开/折叠目录
- `p`：跳转到父目录
- `R`：刷新当前目录树
- `I`/`a`：切换隐藏文件的显示
- `m`：打开目录菜单
	- `a`：添加新文件或新目录
	- `m`：移动/重命名当前文件或目录
	- `d`：删除当前文件或目录
	- `c`：复制当前文件或目录

---

### fzf.vim

fzf以其强大的模糊搜索闻名，拥有fzf和fzf.vim之力，仅用零碎几个字符即可定位到想查找的信息  

- `:Files`：输入文件名的一部分，会立即过滤出包含该字符的文件  
	- `Enter`：在当前窗口打开文件
	- `Ctrl+v`：垂直分割窗口并打开文件
	- `Ctrl+x`：水平分割窗口并打开文件
- `:Lines`：输入任何函数名，变量名或者文本片段，可以快速定位到所在行，按enter进行跳转，比传统的 `/`好用一点

此外还有 `:Buffers`和 `:History`以及git相关搜索命令，不常用

---

### splitjoin.vim  

splitjoin用于将代码在多行和一行之间切换

- `gJ`：将多行代码合并（join）成一行
- `gS`：将一行代码拆分（split）成多行

一般用于数组，列表，函数参数列表当中

```JavaScript
myFunction(arg1, arg2, arg3);
```

将光标放在这一行的任意位置，按下 `gS`

```JavaScript
myFunction(
    arg1,
    arg2,
    arg3
);
```

命令可以在正常模式下使用，也可以搭配可视模式对多行进行操作   
该插件支持绝大多数语言，且足够智能，放心使用  

---

### vim-easy-align

快速、优雅对齐代码工具  

`[可视模式]+ga+[对齐符]`  

一般用于变量对齐等号，字典对齐冒号，表格对齐管道等，起美观作用  

```javaScript
let myVar1 = 123;
let anotherVar = 456;
let short = 'abc';
```

进入可视后选中三行，按下ga，再按下=

```JavaScript
let myVar1     = 123;
let anotherVar = 456;
let short      = 'abc';
```

---

### vim-commentary

快速方便的注释和取消注释代码  

使用 `gc`自动识别文件类型，注释或取消注释该行代码  

---

### vim-repeat

使其他插件的自定义命令可以被 `.`命令重复  

绝大多数插件都会支持repeat

---

### vim-endwise

自动补全配对的关键字  

例如：
- Ruby：`if...end`，`def...end`
- Shell：`if...fi`

---

### vim-fugitive

将git的功能集成到vim中，直接在vim中完成修改和提交

- `:Git status`：打开一个窗口，显示Git的状态
	- `s`：暂存光标下的文件
	- `u`：取消暂存
	- `p`：推送到远程仓库
	- `c`：提交所有已暂存的文件
- `:Git pull`：从远程仓库拉取代码
- `:Git push`：将本地提交推送到远程仓库
- `:Git diff`：查看文件差异

---

### 辅助插件

- `vim-airline`：美化状态栏
- `auto-pairs`：自动补全括号等
- `rainbow`：彩虹括号
- `vim-polyglot`：支持更多种语法高亮

---

### vim-clang-format

clang-format在vim的接口，在vim中可以实现一键对齐代码，将代码变成统一的风格

`:ClangFormat`：格式化整个文件

---

### python-mode

这个插件将vim变成一个强大的python ide，实现在vim中完成代码编写，调试，测试等（集成了pylint、pyflakes、pdb等）

运行：
- `<leader>r`：运行当前Python文件
- `<leader>t`：运行当前文件中的测试

调试：
- `<leader>db`：在光标所在行设置或清楚断点
- `<leader>dc`：继续执行
- `<leader>ds`：单步执行

---

### coc.nvim

coc.nvim是一个专为vim和neovim设计的语言服务器协议（LSP）客户端，实现将vim连接到各种编程语言的语言服务器，获得智能代码补全、语法检查、代码跳转、重构等一系列功能  

- `gd`：跳转到光标所在函数或变量的定义处（go definition）
- `rn`：对光标所在函数或变量进行重命名

---

### vim-startify

添加一个美观的启动菜单

---
