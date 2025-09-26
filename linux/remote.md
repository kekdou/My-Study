### 远程连接

**ssh：远程登录到服务器（Secure Shell）**   

`ssh [用户名]@[远程主机名或IP地址]`  

```shell
#登录到IP地址为192.168.1.100的服务器，使用devuser用户
ssh devuser@192.168.1.100
```

客户端利用ssh与远程服务器建立加密连接，服务器验证你的身份（通过密码或密钥），然后供一个Shell环境，所有数据传输都是加密的，防止被监听  

---

**scp：在本地和远程服务器之间复制文件（Secure Copy）**   

scp是基于SSH协议的文件传输工具，用于在本地和远程主机之间安全地复制文件和目录  

`scp [选项] [源文件] [目标位置]`  
- 从本地复制到远程：

```shell
#将本地的index.html文件复制到服务器的/var/www/html目录
scp index.html devuser@192.168.1.100:/var/www/html/
#复制整个my_project目录到服务器
scp -r my_project devuser@192.168.1.100:/var/www/
``` 

- 从远程复制到本地：

```shell
#将服务器的error.log文件复制到本地的/home/devuser/logs目录
scp devuser@192.168.1.100:/var/log/nginx/error.log /home/devuser/logs/
```

---
