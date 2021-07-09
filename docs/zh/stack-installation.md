# 初始化安装

在云服务器上部署 Neo4j 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80 和 7687** 端口是否开启
3. 若想用域名访问 Neo4j，请先到 **域名控制台** 完成一个域名解析

## Neo4j 验证向导

1. 使用 **SSH** 客户端连接 Neo4j 所在的服务器，输入 `cypher-shell` 命令，并登录（[不知道密码？](/zh/stack-accounts.md)）
   ```
   $cypher-shell
   username: neo4j
   password: *****
   Connected to Neo4j 4.1.0 at neo4j://localhost:7687 as user neo4j.
   Type :help for a list of available commands or :exit to exit the shell.
   Note that Cypher queries must end with a semicolon.
   neo4j@neo4j>
   ```
2. 输入命令 `CALL dbms.showCurrentUser();` 查看当前用户
   ```
   neo4j@neo4j> CALL dbms.showCurrentUser();
   +--------------------------+
   | username | roles | flags |
   +--------------------------+
   | "neo4j"  | admin  | []    |
   +--------------------------+
   1 row available after 22 ms, consumed after another 1 ms
   ```

3. 验证图形化管理工具 Neo4j Browser（[参考](/zh/solution-gui.md#neo4j-browser)）
   ![Neo4j Browser](https://libs.websoft9.com/Websoft9/DocsPicture/zh/neo4j/neo4j-connectfirst-websoft9.png)

> 需要了解更多 Neo4j 的使用，请参考官方文档：[Neo4j Documentation](https://neo4j.com/docs/)

## Neo4j 入门向导

下面以 Neo4j Browser 作为学习工具，完整的让大家快速使用 Neo4j 创建数据和分析数据：

### 用范例数据分析

控制台提供了一个经典范例 **Movie Graph**，根据范例提供的向导可以完成如下动作：

* 创建：将电影数据插入图形
* 查找：检索单个电影和演员
* 查询：发现相关的演员和导演
* 解决：分析某个演员的**六度空间**关系

1. 登录 Neo4j Browser
2. 打开：【Sample Scripts】>【Example Graphs】>【Movie Graph】，点击2/8页下的【Create】图标 
   ![Neo4j 使用范例数据](https://libs.websoft9.com/Websoft9/DocsPicture/zh/neo4j/neo4j-sampleonline001-websoft9.png)

3. 立即可见已经建立了关系的数据
   ![Neo4j 使用范例数据](https://libs.websoft9.com/Websoft9/DocsPicture/zh/neo4j/neo4j-sampleonline002-websoft9.png)

4. 根据向导依次完成后续的页面中的范例

### 自建数据并分析

1. 登录 Neo4j Browser，运行下面的命令录入三条节点数据
   ```
   create (n:Person { name: 'Tom Hanks', born: 1956 }) return n;
   create (n:Person { name: 'Robert Zemeckis', born: 1951 }) return n;
   create (n:Movie { title: 'Forrest Gump', released: 1951 }) return n;
   ```
   ![Neo4j 增加数据](https://libs.websoft9.com/Websoft9/DocsPicture/zh/neo4j/neo4j-inputnodedata001-websoft9.png)

3. 运行查询所有节点数据的命令，便可以看到图形化展示出的数据
   ```
   match(n) return n;
   ```
   ![Neo4j 增加数据](https://libs.websoft9.com/Websoft9/DocsPicture/zh/neo4j/neo4j-inputnodedata002-websoft9.png)

4. 接下来运行下面的命令，给节点创建关系
   ```
   MATCH (a:Person),(b:Movie)
   WHERE a.name = 'Robert Zemeckis' AND b.title = 'Forrest Gump'
   CREATE (a)-[r:DIRECTED]->(b)
   RETURN r;
   ```
5. 再次运行查询节点数据的命令 `match(n) return n;`
   ![Neo4j 增加数据](https://libs.websoft9.com/Websoft9/DocsPicture/zh/neo4j/neo4j-inputnodedata003-websoft9.png)


### 导入数据进行分析

参考：[KGData 行业图谱数据](https://github.com/muniao/KGData)


## 常见问题

#### 浏览器打开IP地址，无法访问 Neo4j（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 能够访问 Neo4j Browser，但是连接数据库报错？

您的服务器对应的安全组 7687 端口没有开启（入规则），导致无法连接数据库

#### 为什么 Neo4j Browser 中 Roles 显示为空？

Neo4j 社区版不支持 Roles，故显示为空。
