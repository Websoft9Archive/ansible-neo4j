# CLI

## Cypher Shell

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

## neo4j-admin

[Neo4j Admin](https://neo4j.com/docs/operations-manual/current/tools/neo4j-admin/) is the primary tool for managing your Neo4j instance. It is a command-line tool that is installed as part of the product and can be executed with a number of commands. Some of the commands are described in more detail in separate sections.

```
$ neo4j-admin help
Usage: neo4j-admin [-hV] [COMMAND]
Neo4j database administration tool.
  -h, --help      Show this help message and exit.
  -V, --version   Print version information and exit.
Commands:
  help                  Displays help information about the specified command
  memrec                Print Neo4j heap and pagecache memory settings recommendations.
  dump                  Dump a database into a single-file archive.
  store-info            Print information about a Neo4j database store.
  report                Produces a zip/tar of the most common information needed for remote assessments.
  load                  Load a database from an archive created with the dump command.
  check-consistency     Check the consistency of a database.
  import                Import a collection of CSV files.
  set-default-admin     Sets the default admin user.
                        This user will be granted the admin role on startup if the system has no roles.
  set-initial-password  Sets the initial password of the initial admin user ('neo4j'). And removes the requirement to
                          change password on first login.
```

## neo4j

```
$neo4j -h
Usage: neo4j { console | start | stop | restart | status | version }
```