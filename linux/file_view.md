### 文件内容操作

**cat：显示文件内容（concatenate）**  

`cat [选项] [文件]`  

```shell
#显示script.js文件的所有内容
cat script.js

#将两个文件的内容连接起来并一起显示
cat file1.txt file2.txt
```

*适用于查看较小文件，不建议查看大型日志文件等，造成刷屏* 

---

**head / tail：查看文件开头或结尾**  

`head [选项] [文件]`  
`tail [选项] [文件]`  
- `-n`：后接数字，表示查看含行数，若数字前加-，表示除了该行

另外，对于tail还有
- `-f`：随文件增长即时输出新增数据  

```shell
#查看my_code.py文件的前5行
head -n 5 my_code.py

#查看my_code.py文件的最后10行
tail -n 10 my_code.py

#持续监控server.log文件
tail -f server.log
```

---

**less：分页查看文件**

前文提到不用cat查看大型文件，一般用less查看

`less [选项] [文件]`  
常用快捷键：
- `space`：下一页
- `b`：上一页
- `j`：下一行
- `k`：上一行
- `/关键词`：对关键词进行搜索
- `q`：退出
- `:e`：查看新文件

```shell
#打开一个大型日志文件
less huge_log_file.log

#通过管道将cat的输出传给less
cat huge_log_file.log | less
```

---
