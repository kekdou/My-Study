### 压缩与解压

**`tar`：归档和压缩**  

*归档即打包的意思*

tar本身只打包，不压缩，为了实现压缩，通常会与其他压缩工具如gzip或bzip2结合使用，因此常看到.tar.gz或.tar.bz2这样的文件  

`tar [选项] [归档文件名] [要操作的文件/目录]`  
- `-c`：创建归档文件（create）
- `-x`：解压归档文件（extract）
- `-f`：指定归档文件的文件名，这个选项必须紧跟文件名（file）
- `-v`：显示详细的归档或解压过程（verbose）
- `-z`：通过gzip压缩或解压（gzip），用于.tar.gz或.tgz文件
- `-j`：通过bzip2解压或压缩（bzip2），用于.tar.bz2或.tbz文件
- `-J`：通过xz解压或压缩，通常用于.tar.xz文件
- `-C`：在指定解压目录解压

```shell
#将my_project目录打包并压缩为my_project.tar.gz
tar -czvf my_project.tar.gz my_project/

#解压my_project.tar.gz到当前目录
tar -xzvf my_project.tar.gz

#将archive.tar.gz解压到/home/user/docs目录下
tar -xzvf archive.tar.gz -C /home/user/docs
```

---

**`zip`：压缩与 `unzip`：解压**  

`tar`命令可以进行分布操作，可以只打包不压缩，也能完整保留文件的所有权限、时间戳、所有者和组等信息，因此在linux/unix系统中tar往往是首选  

但如果要跨平台数据交换，为了保证对方顺利解压，需要用到 `zip`，zip格式是跨平台标准，windows，macos和linux都内置了对.zip文件的支持，且zip可以一次性完成打包和压缩，也可以进行增量压缩，即可以方便的从压缩包中提取单个文件，而无需解压整个压缩包（似乎没用  

`zip [选项] [压缩包名] [参数]`
- `-r`：递归压缩
- `-e`：创建加密的压缩包，会提示输入密码

```shell
#将file1.txt和file2.txt压缩到files.zip
zip files.zip file1.txt file2.txt

#将整个my_project目录压缩成my_project.zip
zip -r my_project.zip my_project/
```

*注意：对于tar和zip在压缩目录时都是内置且默认递归的，但是在用zip压缩目录时通常加上-r来明确目的*

`unzip [选项] [压缩包名] [参数]`
- `-d`：指定压缩目录
- `-l`：列出压缩包中的内容，但不解压

```shell
#解压files.zip到当前目录
unzip files.zip

#将archive.zip解压到/home/user/docs目录下
unzip archive.zip -d /home/user/docs
```

---
