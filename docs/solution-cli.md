# CLI

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