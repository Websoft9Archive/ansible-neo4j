# More

Each of the following solutions has been proven to be effective and We hope to be helpful to you.

## Manage Users

First you can read the official docs: [User and role management](https://neo4j.com/docs/cypher-manual/current/administration/security/users-and-roles/#administration-security-users) to get basic knowledge.  

The following is some useful command for user management:  

```
# Show all users
SHOW USERS;

# Create new user
```

```
# Show all users
SHOW USERS;
CALL dbms.security.listUsers();

# Create new user, the third parameter is requridchangepassword 
CALL dbms.security.createUser('username','password',false);

# Delete user
CALL dbms.security.deleteUser('username');   
```

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


## Resetting Password

There are two main measures to reset password for Neo4j

### Changing password

You can change password using jut one command below sample:

```
# Change old password "neo4j" to new password "neo4j123"

echo "
ALTER CURRENT USER SET PASSWORD FROM 'neo4j' TO 'neo4j123';
" | cypher-shell -u neo4j  -p neo4j  -d system
```

### Forgot Password

Try to retrieve your password through the following steps when forgot it:

1. Stop Neo4j server
   ```
   sudo systemctl stop neo4j
   ```

2. Modify [Neo4j configuration file](/stack-components.md#neo4j), set `#dbms.security.auth_enabled=false` to the following value
   ```
   dbms.security.auth_enabled=false
   ```

3. Restart Neo4j and set a new password
   ```
   sudo systemctl start neo4j
   cypher-shell -d system
   
   neo@system> ALTER USER neo4j SET PASSWORD 'mynewpass';
   neo@system> :exit
   ```

4. Recovery Neo4j configuration file

5. Restart the Neo4j service
   ```
   sudo systemctl restart neo4j
   ``` 

More details please refer to: [Password and user recovery](https://neo4j.com/docs/operations-manual/current/configuration/password-and-user-recovery/)
