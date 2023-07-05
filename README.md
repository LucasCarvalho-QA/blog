# SQL Database Schema and Queries
This repository contains a SQL script that creates a database schema using the Microsoft SQL Server database management system. It also includes sample queries to retrieve data from the created tables.

## Schema
The schema consists of three tables: PAIS, ESTADO, and CIDADE. Here is the schema definition:

### PAIS
- ID_PAIS (INT) - Primary key, auto-incremented.
- NOME_PAIS (VARCHAR(100)) - Unique name of the country, not nullable.
- CONTINENTE (VARCHAR(100)) - Name of the continent, not nullable.

### ESTADO
- ID_ESTADO (INT) - Primary key, auto-incremented.
- NOME_ESTADO (VARCHAR(100)) - Name of the state, not nullable.
- UF (CHAR(2)) - State abbreviation.
- PAIS (INT) - Foreign key referencing the ID_PAIS column in the PAIS table.

### CIDADE
- ID_CIDADE (INT) - Primary key, auto-incremented.
- NOME_CIDADE (VARCHAR(100)) - Name of the city, not nullable.
- ESTADO (INT) - Foreign key referencing the ID_ESTADO column in the ESTADO table.
- DATA_REGISTRO (DATETIME) - Date and time of the record's creation, defaulting to the current date and time.

## Queries
The following queries can be executed to retrieve data from the created tables:

- SELECT * FROM PAIS
- SELECT * FROM ESTADO
- SELECT * FROM CIDADE

## Contribution
Contributions to this repository are welcome. If you have any improvements or additional SQL query examples, feel free to submit a pull request.
Feel free to explore and use this SQL script to create the database schema and perform queries.
