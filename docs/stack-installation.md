# Initial Installation

If you have completed the Neo4j deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Server's Internet IP** on your Cloud Platform
2. Check **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 and 7867 allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Neo4j

## Neo4j Installation Wizard

1. Use **SSH** to connect Neo4j Server, run the command `cypher-shell`, you should input your username and password for this command.([Don't known password?](/stack-accounts.md#neo4j))
   ```
   $cypher-shell
   username: neo4j
   password: *****
   Connected to Neo4j 4.1.0 at neo4j://localhost:7687 as user neo4j.
   Type :help for a list of available commands or :exit to exit the shell.
   Note that Cypher queries must end with a semicolon.
   neo4j@neo4j>
   ```
2. Run the command `CALL dbms.showCurrentUser();` to show all users
   ```
   neo4j@neo4j> CALL dbms.showCurrentUser();
   +--------------------------+
   | username | roles | flags |
   +--------------------------+
   | "neo4j"  | admin  | []    |
   +--------------------------+
   1 row available after 22 ms, consumed after another 1 ms
   ```

3. Try the GUI tool **Neo4j Browser**([refer to here](/solution-gui.md#neo4j-browser))
   ![Neo4j Browser](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-connectfirst-websoft9.png)

> More useful Neo4j guide, please refer to [Neo4j Documentation](https://neo4j.com/docs/)

## Neo4j Setup Wizard

We will provide a quick guide for you to use Neo4j Browser, you can get a complete data analysis.

### Use sample data for analysis

You can use the sample **Movie Graph** on the Neo4j Browser console for the following steps:

* Create data
* Query node
* Solve relationship

1. Login to Neo4j Browser

2. Open:【Sample Scripts】>【Example Graphs】>【Movie Graph】, click 【Create】icon at 2/8
   ![Neo4j use sample](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-sampleonline001-websoft9.png)

3. You can see the relationship graph
   ![Neo4j use sample](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-sampleonline002-websoft9.png)

4. Complete the more steps

### Create data for analysis

1. Login Neo4j Browser, run the following command to create Node data
   ```
   create (n:Person { name: 'Tom Hanks', born: 1956 }) return n;
   create (n:Person { name: 'Robert Zemeckis', born: 1951 }) return n;
   create (n:Movie { title: 'Forrest Gump', released: 1951 }) return n;
   ```
   ![Neo4j add data](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-inputnodedata001-websoft9.png)

3. Run the query command to show graph
   ```
   match(n) return n;
   ```
   ![Neo4j add data](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-inputnodedata002-websoft9.png)

4. Create relationship by the following command
   ```
   MATCH (a:Person),(b:Movie)
   WHERE a.name = 'Robert Zemeckis' AND b.title = 'Forrest Gump'
   CREATE (a)-[r:DIRECTED]->(b)
   RETURN r;
   ```
5. Run the query `match(n) return n;`
   ![Neo4j show graph](https://libs.websoft9.com/Websoft9/DocsPicture/en/neo4j/neo4j-inputnodedata003-websoft9.png)

## Q&A

#### I can't visit the start page of Neo4j?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### I can visit Neo4j Browser but database connection error?

Your TCP:7687 of Security Group Rules is not allowed so that Neo4j Browser can't connect Neo4j from this port

#### WhyNeo4j Browser roles is null?

Neo4j Community Edition not support roles