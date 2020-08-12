#!/bin/bash
echo " 
neo4j
neo4j 
neo4j123" | cypher-shell

echo "
ALTER CURRENT USER SET PASSWORD FROM 'neo4j123' TO 'neo4j';
" | cypher-shell -u neo4j  -p neo4j123  -d system
