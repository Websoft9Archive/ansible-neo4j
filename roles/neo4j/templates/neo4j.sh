#! /bin/bash
sleep 15s

echo "
ALTER CURRENT USER SET PASSWORD FROM 'neo4j' TO 'neo4j123';
" | cypher-shell -u neo4j  -p neo4j  -d system

echo "
ALTER CURRENT USER SET PASSWORD FROM 'neo4j123' TO 'neo4j';
" | cypher-shell -u neo4j  -p neo4j123  -d system
