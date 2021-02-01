# 图形化工具

Neo4j 提供了多种图形化工具，有基于 Web 的版本，也有支持 Windows, Linux, macOS 等桌面版本。

## 开启远程访问

在使用图形化工具之前，请确保开启了远程访问：

1. Neo4j 所在的服务器的安全组，需开启 7876 端口

2. 确保[Neo4j 配置文件](/zh/stack-components.md#neo4j) 中没有限制外网IP访问（默认 0.0.0.0 表示允许）
   ```
   # With default configuration Neo4j only accepts local connections.
   # To accept non-local connections, uncomment this line:
   dbms.default_listen_address=0.0.0.0
   ```

## Neo4j Browser

Neo4j Browser 是开发人员与图形进行交互的工具。它是Neo4j数据库的企业版和社区版的默认界面。

1. 本地浏览器访问：*http://域名* 或 *http://服务器公网IP*, 访问 Neo4j Browser
![Neo4j Browser](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-connectfirst-websoft9.png)

2. 选择【bolt://】的URL模式，输入用户名和密码（[不知道密码？](/zh/stack-accounts.md)），可能还需提示立即修改密码
![修改Neo4j密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-snewpw-websoft9.png)

> Pick neo4j:// for a routed connection, bolt:// for a direct connection to a DBMS. 选择 bolt:// 速度更快

3. 系统登录到控制台，初始化安装完成
![Neo4j 控制台](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-ssui-websoft9.png)

4. 通过:【Database Information】>【server user add】 增加新用户
![Neo4j 增加用户](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-adduser-websoft9.png)

5. 通过:【Cloud Services】>【Clear local data】 退出 Neo4j Browser 
![Neo4j 增加用户](https://libs.websoft9.com/Websoft9/DocsPicture/zh/neo4j/neo4j-loginout-websoft9.png)

## Neo4j Desktop

[Neo4j Desktop](https://neo4j.com/download-center/) 是开发人员使用本地Neo4j数据库的便捷方式。

1. [下载](https://neo4j.com/download-thanks-deskto)

2. 双击安装至完成，然后到 Neo4j 官网上注册，获取一个秘钥

3. 激活 Neo4j Desktop

4. 连接到远程 Neo4j 数据库，开始使用

## Neo4j Bloom

探索和可视化图形数据，这是一个付费的工具。