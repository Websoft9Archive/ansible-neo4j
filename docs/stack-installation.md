# Initial Installation

If you have completed the Neo4j deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Neo4j

## Neo4j Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://domain name* or *http://Internet IP*, you will enter the register interface of Neo4j
![Neo4j Browser](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-connectfirst-websoft9.png)

2. Input the [default username and password](/stack-accounts.md), then the system will force a password change.
![modify Neo4j password](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-snewpw-websoft9.png)

4. After modifying the new password, the system logs in to the console and initializes the installation.
![Neo4j Console](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-ssui-websoft9.png)

5. You can add user by **Database Information** > **server user add**
![Neo4j add user](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-adduser-websoft9.png)

> More useful Neo4j guide, please refer to [Neo4j Documentation](https://neo4j.com/docs/)

## Q&A

#### I can't visit the start page of Neo4j?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### I can visit Neo4j Browser but database connection error?

Your TCP:7687 of Security Group Rules is not allowed so that Neo4j Browser can't connect Neo4j from this port