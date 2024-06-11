# PostgreSQL

## Installing

[Download](https://www.postgresql.org/download/)
[asdf postgres](https://github.com/smashedtoatoms/asdf-postgres)

## Tools

[PG Cli](https://www.pgcli.com/)

## Database mock

[Northwind database](https://github.com/pthom/northwind_psql)
[DVDRental](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/)

## Resources

[Awasome postgreSQL](https://github.com/dhamaniasad/awesome-postgres)
[Learn SQL - POPsql](https://popsql.com/learn-sql/postgresql)

## Articles

[Soft delete pattern in postgres](http://rockwood.me/2018/soft-delete-pattern-in-postgres/)

## Commands

Some commands
```
  \du - list all users
  \l - list databases
  \list - list databases
  \dt - list tables
  \i file.sql - run sql file
  \q - quit
  \h - help
  \c database_name - connect to database
  \d table_name - describe table
  \d+ table_name - describe table with all columns
  \d table_name.* - describe table with all columns
  \x - exit
```

Create new role
```
  sudo su - postgres
  createuser --interactive --pwprompt
```

Enter on psql
```
  psql -U username database
```

Enter on pgcli
```
  pgcli -U username database
```

Create a new super super user
```sql
  CREATE USER username WITH SUPERUSER PASSWORD 'passwordstring';
```

Create a database
```sql
  > CREATE DATABASE database_name;
  > GRANT ALL PRIVILEGES ON DATABASE database_name TO user;
```
