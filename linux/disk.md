### 磁盘管理

**df：查看磁盘使用情况**  

`df [选项] [文件/目录]`  
- `-h`：以人类可读的格式显示
- `-T`：显示文件系统类型

```shell
$ df -h
Filesystem   Size   Used   Avail   Use%   Mounted on
/dev/sda1    50G    25G    25G     50%    /
tmpfs        3.9G   0      3.9G    0%     /dev/shm
```

文件系统：
操作系统用来组织和管理存储设备上数据的方法和结构，在检查问题的时候有用，对现阶段过于神秘  

---
