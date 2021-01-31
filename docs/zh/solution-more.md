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


## 重置密码

常用的 Neo4j 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码

修改密码只需登录服务器后运行一条命令即可：  

下面的示例是将旧密码`neo4j`更改为新密码`neo4j123`：


```
echo "
ALTER CURRENT USER SET PASSWORD FROM 'neo4j' TO 'neo4j123';
" | cypher-shell -u neo4j  -p neo4j  -d system
```

系统也支持在 Neo4j Browser 中修改密码。

### 找回密码

如果用户忘记了密码，通过配置文件临时去掉验证，然后设置密码，再复原的方法找回密码：

1. 停止 Neo4j
   ```
   sudo systemctl stop neo4j
   ```

2. 修改 [Neo4j 的配置文件](/zh/stack-components.md#neo4j)，将`#dbms.security.auth_enabled=false` 改成
   ```
   dbms.security.auth_enabled=false
   ```
3. 重新启动 Neo4j 服务后，开始修改密码
   ```
   sudo systemctl start neo4j
   cypher-shell -d system
   
   neo@system> ALTER USER neo4j SET PASSWORD 'mynewpass';
   neo@system> :exit
   ```

4. 复原配置文件
5. 重启 Neo4j 服务

以上方案来自官方文档：[Password and user recovery](https://neo4j.com/docs/operations-manual/current/configuration/password-and-user-recovery/)