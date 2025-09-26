### 网络

**ping：测试网络连接**  

ping通过发送ICMP Echo Request（回声请求）数据包来工作。如果目标主机可达，它会回复一个ICMP Echo Reply（回声应答）

ping命令是网络诊断中最简单、常用的工具，能检查主机是否能到达目标主机

`ping [选项] [目标主机]`  
- `-c [次数]`：指定发送数据包的次数，可以避免无限循环测试
- `-i [秒]`：指定发送数据包的时间间隔

目标主机：可以是ip地址（如192.168.1.1）或域名（如`google.com`）

```shell
#检查能否连接到example.com
ping example.com
#按Ctrl+C停止

#发送5个数据包到google.com
ping -c 5 google.com
```

---

**ip或ifconfig：查看和配置网络接口**  

这两个命令通过查询操作系统内核中关于网络接口的信息来工作，获取和配置网络信息（查看我的ip地址、网卡是否启用等）  

最常使用 `ip a`或 `ip addr`：显示所有网络接口的IP地址和状态  

```shell
#查看所有网卡的详细信息，包括IP地址
ip a

# 输出示例：
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    inet 192.168.1.10/24 brd 192.168.1.255 scope global eth0
```

示例解析：   

第一行提供了网卡的基本信息，类似个人简历 
- `2: eth0:`：
  - `2：`：网卡编号
  - `eth0`：网卡名称
- `<BROADCAST,MULTICAST,UP,LOWER_UP>`：
  - `BROADCAST`：表示网卡支持广播通信
  - `MULTICAST`：表示网卡支持多播通信
  - `UP`：表示网卡已启用，若被禁用显示 `DOWN`
  - `LOWER_UP`：表示物理连接正常（网线已插入或Wi-Fi已连接），若不正常显示 `LOWER_DOWN`  
- `mtu 1500`：mtu(Maximum Transmission Unit)：最大传输单元，这个网络接口一次可发送最大数据包（单位是字节）  
- `state UP`：再次确认网卡状态，`UP`表示网卡正在运行

第二行详细说明网卡的网络地址配置
- `inet 192.168.1.10/24`：
  - `inet`：表示这是一个ipv4地址
  - `192.168.1.10`：网卡的ip地址，设备在网络中的唯一标识
  - `/24`：子网掩码
- `brd 192.168.1.255`：brd (broadcast)：广播地址，用于向该网络中的所有设备发送数据  
- `scope global`：表示这个IP地址可以在全球网络中使用或在本地网络中被访问


`ifconfig`作用与 `ip`类似，不过略有过时，在许多新发行版可能需要单独安装  

---
