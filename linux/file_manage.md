### 文件与目录操作

**`ls`：查看文件和目录（list）** 

`ls [选项] [文件或目录]`  
- `-l`：以长格式显示，包含权限、所有者、大小、修改日期等详细信息
- `-a`：显示所有文件，包括以.开头的隐藏文件
- `-h`：配合 `-l`使用，以可读格式（KB，MB，GB）显示文件大小
- `-R`：递归列出，遍历文件的所有子目录
- `-t`：按时间排序列出

*一般情况下 `-R`和 `-r`是可以互换使用的，都表示递归，但一些命令（如chmod）更倾向于 `-R`，并且在不同linu和unix系统中 `-R`更加通用*  

```shell
#查看当前目录下所有文件的详细信息
$ ls -l
drwxr-xr-x 2 user group 4096 Sep 5 10:30 my_project
-rw-r--r-- 1 user group 1024 Sep 5 10:31 README.md
```

---

**`cd`：切换目录（change directory）**   

`cd [目录]`  
- `cd ..`：返回上一级
- `cd ~`或 `cd`：返回当前用户目录
- `cd -`：返回上次目录
- `cd /`：返回根目录

路径可以是绝对路径（以/开头）或相对路径（不以/开头） 

例如，如果当前在 `/home/user`，要进入project目录，可以使用`cd project`。要进入 `/var/www`，则必须使用 `cd /var/www`  

```shell
cd /var/www/html
```

---

**`pwd`：显示当前路径（print working directory）**  

显示当前绝对路径  

```shell
$ pwd
/home/user/my_project
```

---

**`mkdir`：创建目录（make diirectory）**  

`mkdir [选项] [目录名]`  
- `-p`：递归创建目录，如果父目录不存在会一并创建

*如不使用 `-p`选项，否则父目录不存在会报错，并且父目录需要写入权限*

```shell
mkdir -p src/utils
```

---

**`rm`：删除文件或目录（remove）**  

`rm [选项] [文件或目录]`
- `-r`：递归删除，用于删除目录及其所有内容
- `-f`：强制删除，不提示确认 
- `-i`：每次删除前询问
- `-d`：删除空目录 

一般情况下，rm是不会删除目录的  

删除文件：从目录中移除该文件的链接，而不是真正擦除磁盘上的数据，只有所有链接都删除后，文件才会被系统回收  

删除目录：递归删除目录中的所有文件和子目录，直到目录为空，然后删除目录本身，**即删除目录需要加上 `-r`**  

*`rm -rf`是一个非常危险的命令，一旦执行数据几乎无法恢复！使用时务必确认路径无误*  

```shell
#删除名为old_file.txt的文件
rm old_file.txt

#递归删除名为old_project的目录及其所有内容
rm -r old_project
```

---

**`cp`：复制文件或目录（copy）**  

`cp [选项] [源文件或目录] [目标文件或目录]`
- `-r`：递归复制，用于复制目录及其所有内容
- `-i`：在覆盖同名文件前进行提示
- `-p`：目标位置的文件权限可能会受影响，使用-p保留源文件的权限

*复制目录时一定要使用 `-r`选项*

```shell
#将file.txt复制到同一目录下，并命名为file_copy.txt
cp file.txt file_copy.txt

#将file.txt复制到上级目录的docs目录中
cp file.txt ../docs

#递归复制project_template/目录到new_project/
cp -r project_template/ new_project/
```

---

**`mv`：移动或重命名文件（move）**  

`mv [选项] [源文件或目录] [目标文件或目录]`
- `-i`：覆盖同名文件时询问

```shell
#将old_name.txt重命名为new_name.txt
mv old_name.txt new_name.txt

#将new_app目录移动到/var/www/目录下
mv new_app/ /var/www/
```

---
