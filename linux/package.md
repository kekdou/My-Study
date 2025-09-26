### 软件与包管理  

包管理器是linux系统最核心的工具之一，能实现轻松的安装、更新、卸载软件  

不同linux的发行版使用不同的包管理器
- Debian/Ubuntu：apt或apt-get  
- Red Hat/CentOS：yum或dnf

---

**update：更新可用软件包列表**  

`apt update`  

能够更新本地的软件包索引，从软件仓库服务器下载最新的软件包列表，但不会安装或升级任何软件包  

在安装新软件或升级系统前，执行该命令以确保获取的是最新可用的版本  

```shell
#更新本地软件包索引
sudo apt update
```

---

**install：安装软件包**  

`apt install [软件包名]`  

检查本地索引，查找软件包及其所有依赖项，然后从软件仓库下载并安装它们  

```shell
#安装nginx Web服务器
sudo apt install nginx
#安装git
sudo apt install git
```

---

**upgrade：升级已安装的软件包** 

`apt upgrade` 

根据apt update后的最新索引，找出所有可以升级的软件包，并下载安装新版本  

```shell
#升级所有软件包
sudo apt upgrade
```

---

**remove：卸载软件包**  

`apt remove [软件包名]`  

卸载指定的软件包，但会**保留其配置文件**  

```shell
#卸载nginx
sudo apt remove nginx
```

---

**purge：完全卸载软件包**  

`apt purge`  

彻底卸载指定的软件包，**包括其配置文件**

**search：搜索软件包**

`apt search [关键词]`  

在不确定包名时，可用于搜索软件仓库中可用的软件包  

---
