# 更新升级

网站技术日新月异，**更新升级**是维护工作之一，长时间不升级的程序，就如长时间不维护的建筑物一样，会加速老化、功能逐渐缺失直至无法使用。  

这里注意更新与升级这两词的差异（[延伸阅读](https://support.websoft9.com/docs/faq/zh/tech-upgrade.html#更新-vs-升级)），例如：
- 操作系统打个补丁常称之为**更新**，Ubuntu16.04 变更为 Ubuntu18.04，称之为**升级**
- MySQL5.6.25-->MySQL5.6.30 常称之为**更新**，MySQL5.6->MySQL5.7 称之为**升级**

Neo4j 完整的更新升级包括：系统级更新（操作系统和运行环境）和 Neo4j 程序升级两种类型

## 系统级更新

运行一条更新命令，即可完成系统级更新：

``` shell
#For Ubuntu
apt update && apt upgrade -y

#For Centos&Redhat
yum update -y
```
> 本部署包已预配置一个用于自动更新的计划任务。如果希望去掉自动更新，请删除对应的Cron

以上命令支持对 Neo4j Patch 升级，类似：Neo4j 4.0.0 to Neo4j 4.0.1。

## Neo4j 升级

Neo4j 升级有一定的复杂性，请参考[官方升级文档](https://neo4j.com/docs/operations-manual/current/upgrade/)

升级对象一般指的是：Neo4j 4.1.2 to Neo4j 4.2.0，下面说明主要步骤：

1. 停止 Neo4j 服务之后，安装指定的版本
    ```
    sudo systemctl stop neo4j
    sudo apt-get update
    sudo sudo apt-get install neo4j=1:4.2.2
    ```
2. 修改 Neo4j 配置文件，取消 `dbms.allow_upgrade=true` 前面的 # 号

3. 运行 Neo4j 启动服务的命令
    ```
    sudo systemctl start neo4j
    ```
4. 系统升级开始
5. 升级完成之后，恢复 `dbms.allow_upgrade=true`之前的 # 号