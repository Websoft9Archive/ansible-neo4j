# GUI

Neo4j have some useful GUI tools, include web-based and desktop, support Windows, Linux, macOS.

## Enable remote connection

Before use GUI tool, you should prepare something for it

1. Check **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the 7867 allowed

2. Check [Neo4j configuration file](/stack-components.md#neo4j) have accept all IP connection(0.0.0.0 mean allowed)
   ```
   # With default configuration Neo4j only accepts local connections.
   # To accept non-local connections, uncomment this line:
   dbms.default_listen_address=0.0.0.0
   ```

## Neo4j Browser

Neo4j Browser is a web-base tool for Neo4j, included in the Neo4j Server by default

1. Using local Chrome visit the URL *http://domain* or *http://Server's Internet IP*, access to Neo4j Browser

![Neo4j Browser](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-connectfirst-websoft9.png)

2. Select 【bolt://】URL mode, and input the [default username and password](/stack-accounts.md), then the system may force a password change.

![modify Neo4j password](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-snewpw-websoft9.png)

> Pick neo4j:// for a routed connection, bolt:// for a direct connection and fast than neo4j://

4. After modifying the new password, the system logs in to the console and initializes the installation.

![Neo4j Console](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-ssui-websoft9.png)

5. You can add user by **Database Information** > **server user add** (Enterprise Edition)

![Neo4j add user](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-adduser-websoft9.png)

## Neo4j Desktop

[Neo4j Desktop](https://neo4j.com/download-center/) is a local tool for developer.

## Neo4j Bloom

Neo4j Bloom is the graph visualization and exploration tool 