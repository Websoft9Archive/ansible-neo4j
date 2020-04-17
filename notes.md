# Neo4j Notes

组件名称：Neo4j  
安装文档：https://neo4j.com/docs/operations-manual/current/installation/linux/rpm/#linux-rpm-install  
配置文档: https://neo4j.com/docs/operations-manual/4.0/configuration/connectors/  
支持平台：Debian家族 | RHEL家族 | Windows | MacOS | Docker  

责任人：zengxiangchuan

## 概要

Neo4j是一个高性能的，NOSQL数据库，它将结构化数据存储在网络上而不是表中。它是一个嵌入式的、基于磁盘的、具备完全的事物特性的java持久化引擎。Neo4j也可以看作是一个高性能的图引擎，该引擎具有成熟数据库所有特性。

## 环境要求

* 程序语言：Java 
* 应用服务器：自带
* 依赖组件：OpenJDK 11
* 其他：

## 安装说明

据官网文档说明,neo4j数据库有专用软件仓库,不建议用第三方软件仓库或者自行下载依赖软件。

下面基于不同的安装平台，分别进行安装说明。

### CentOS

默认包中自带openjdk11，如果需要在AmazonLinux上使用需额外安装OpenJDK，如果需要使用Oracle JDK，也需额外安装

```shell
# 安装公钥并安装neo4j软件仓库
rpm --import https://debian.neo4j.com/neotechnology.gpg.key
cat <<EOF>  /etc/yum.repos.d/neo4j.repo
[neo4j]
name=Neo4j RPM Repository
baseurl=https://yum.neo4j.com/stable
enabled=1
gpgcheck=1
EOF

# 安装Neo4j
yum install neo4j

```
## 配置

安装完成后，注意如下配置：

#修改配置文件
dbms.connector.http.enabled=true(默认为false)
dbms.connector.http.listen_address=:7474(http协议)
dbms.connector.http.listen_address=:7473(https协议)
dbms.connector.bolt.listen_address=0.0.0.0:端口号(自定义端口)

#启动与开机自启
```
systemctl start neo4j
systemctl enable neo4j
```

## 路径

运行命令`neo4j   console`，获取如下路径信息：

```
  程序路径:         /var/lib/neo4j
  配置文件路径:   /etc/neo4j
  日志路径:         /var/log/neo4j
  插件路径:      /var/lib/neo4j/plugins
  数据路径:         /var/lib/neo4j/data
  证书路径:       /var/lib/neo4j/certificates
  启动路径:          /var/run/neo4j
```

## 服务

本项目安装后自动生成：neo4j 服务


## 版本号

通过如下的命令获取主要组件的版本号: 

```
# Check Neo4j version
rpm -qa | grep neo
neo4j version

# Check java  version
java -version
```

## 常见问题

#### 有没有管理控制台？

*http:// 公网 IP:7474* 即可访问控制台，系统默认存在一个无法通过外网访问的neo4j/neo4j账号

#### 本项目需要开启哪些端口？

| item       | port  |
| --------- | ----- |
| java        | 7687 |
| java         | 7474 |
|java         | 7473 |


#### 有没有CLI工具？

neo4j-driver,  py2neo,  neo4jrestclient   建议用官方支持的是neo4j-driver

#### java 11 不兼容

Oracle和OpenJDK为Java 11提供了不兼容的RPM软件包。我们提供了针对Oracle Java 11的适配器，该适配器必须在Neo4j之前安装。

## 日志

* 2020-04-16 完成CentOS安装研究
