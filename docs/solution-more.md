# More

Each of the following solutions has been proven to be effective and We hope to be helpful to you.

## Domain binding

The precondition for binding a domain is that Neo4j can accessed by domain name.

Nonetheless, from the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Neo4j domain name binding steps:

1. Connect your Cloud Server
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx), change the **server_name**'s value *_* to your domain name
   ```text
   server {
      listen 80;
      server_name    _; # Change to a your domain name
   ...
   ```
3. Save it and restart [Nginx Service](/admin-services.md#nginx)

## CLI

[Cypher Shell](https://neo4j.com/docs/operations-manual/current/tools/cypher-shell/) is a command-line tool that comes with the Neo4j installation. Cypher Shell is used to run queries and perform administrative tasks. It communicates via the encrypted binary protocol Bolt.

```
root@neo4j-test:~# cypher-shell
username: neo4j
password: *****
Connected to Neo4j 3.5.14 at bolt://localhost:7687 as user neo4j.
Type :help for a list of available commands or :exit to exit the shell.
Note that Cypher queries must end with a semicolon.
neo4j>
```
