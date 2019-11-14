# 初始化安装

在云服务器上部署 Neo4j 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80 和 7876** 端口是否开启
3. 若想用域名访问 Neo4j，请先到 **域名控制台** 完成一个域名解析

## Neo4j 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://Internet IP*, 默认进入 Neo4j Browser 的连接页面
![Neo4j Browser](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-connectfirst-websoft9.png)

2. 输入[默认用户名和密码](/zh/stack-accounts.md)后，系统会强制要求修改密码
![修改Neo4j密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-snewpw-websoft9.png)

4. 修改新密码后，系统登录到控制台，初始化安装完成
![Neo4j 控制台](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-ssui-websoft9.png)

5. 通过:【Database Information】>【server user add】 增加新用户
![Neo4j 增加用户](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-adduser-websoft9.png)

> 需要了解更多 Neo4j 的使用，请参考官方文档：[Neo4j Documentation](https://neo4j.com/docs/)

## 常见问题

#### 浏览器打开IP地址，无法访问 Neo4j（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 能够访问 Neo4j Browser，但是连接数据库报错？

您的服务器对应的安全组7876端口没有开启（入规则），导致无法连接数据库
