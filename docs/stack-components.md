# Parameters

The Neo4j deployment package contains a sequence software (referred to as "components") required for Neo4j to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Neo4j

Neo4j lib directory: */usr/share/neo4j/lib*  
Neo4j configuration file: */etc/neo4j/neo4j.conf*  
Neo4j data directory: */var/lib/neo4j/data*  
Neo4j logs directory: */var/log/neo4j* 

> More paths of directories in the installation please view the file *neo4j.conf*

### Java

Java Directory: */usr/lib/jvm*

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs file: */var/log/nginx/*

## Ports

These Ports is need when use Neo4j, refer to [Safe Group Setting on Cloud Console](https://support.websoft9.com/docs/faq/tech-instance.html)

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 80 | HTTP requests for Neo4j Browser | Required |
| HTTPS | 443 | HTTPS requests Neo4j  Browser| Optional |
| Neo4j | 7687 | Remote connect Neo4j | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Java Version
java --version

# Nginx version:
nginx -v
```