# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：Neo4j Browser已经可以通过解析后的域名访问。  

虽然如此，从服务器安全和后续维护考量，**域名绑定**步骤不可省却  

Neo4j 域名绑定操作步骤：

1. 登录云服务器
2. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值 *_* 修改为你的域名
   ```text
   server {
      listen 80;
      server_name  _; # 改为自定义域名
   ...
   ```
3. 保存配置文件，重启[Nginx服务](/zh/admin-services.md#nginx)


## CLI

Neo4j 提供了默认的命令行工具[Cypher Shell](https://neo4j.com/docs/operations-manual/current/tools/cypher-shell/)，Cypher Shell用于运行查询和执行管理任务。它通过加密的二进制协议Bolt进行通信。

```
root@neo4j-test:~# cypher-shell
username: neo4j
password: *****
Connected to Neo4j 3.5.14 at bolt://localhost:7687 as user neo4j.
Type :help for a list of available commands or :exit to exit the shell.
Note that Cypher queries must end with a semicolon.
neo4j>
```
