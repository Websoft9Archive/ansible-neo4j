# Parameters

The Neo4j deployment package contains a sequence software (referred to as "components") required for Neo4j to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Neo4j

Neo4j home: */var/lib/neo4j*  
Neo4j config: */etc/neo4j*  
Neo4j logs: */var/log/neo4j*  
Neo4j plugins: */var/lib/neo4j/plugins*  
Neo4j import: */var/lib/neo4j/import*  
Neo4j data: */var/lib/neo4j/data*  
Neo4j certificates: */var/lib/neo4j/certificates*  
Neo4j run: */var/run/neo4j*  

> More paths of directories in the installation please view the file *neo4j.conf*

### Java

Java Directory: */usr/lib/jvm*

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs file: */var/log/nginx/*

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

The following are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 80 | HTTP requests for Neo4j Browser | Required |
| HTTPS | 443 | HTTPS requests Neo4j  Browser| Optional |
| Neo4j | 7687 | Remote connect Neo4j | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

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