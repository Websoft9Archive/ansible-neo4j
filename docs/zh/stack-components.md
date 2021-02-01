# 参数

Neo4j 预装包包含 Neo4j 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### Neo4j

运行 `neo4j console` 命令查看安装相关的路径：

Neo4j 程序路径：*/var/lib/neo4j*  
Neo4j 配置文件路径：*/etc/neo4j/neo4j.conf*   
Neo4j 日志路径：*/var/log/neo4j*  
Neo4j 插件路径：*/var/lib/neo4j/plugins*  
Neo4j 数据路径：*/var/lib/neo4j/data*  
Neo4j 证书路径：*/var/lib/neo4j/certificates*  
Neo4j 启动路径：*/var/run/neo4j*  

> 更多安装路径请查看 *neo4j.conf* 文件，配置文件设置参考[此处](https://neo4j.com/docs/operations-manual/current/configuration)

### Java

Java Directory: */usr/lib/jvm*

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx/*


## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过http访问 Neo4j Browser| 必须 |
| HTTPS | 443 | 通过https访问 Neo4j Browser| 可选 |
| Neo4j | 7687 | Neo4j Browser 远程连接 Neo4j database | 可选 |

Neo4j 使用中可能需要用到更多的端口，详情参考官方文档：[Port on Configuration file](https://neo4j.com/docs/operations-manual/current/configuration/ports/)

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Java version
java -v

# Neo4j version
neo4j-admin -V
neo4j version
```