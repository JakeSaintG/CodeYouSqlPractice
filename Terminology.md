# SQL Terminology

## SQL
- SQL stands for Structured Query Language and is the "code" behind reading and writing in data storage (databases).
    - It is often pronounced "sequel" or "S-Q-L".

- SQL is a HIGHLY overloaded acronym…
    - Job desciptions will often just say "SQL" sometimes without elaboarting.
    - Will applicants just need to know `SELECT *` and `DROP TABLE` or will they be maintaining/architecting databases?

## AnsiSQL
- "SQL" has a standard behind it called "AnsiSQL". This sets serves as the framework for many different SQL technologies.
    - These include tSQL on applications SQL Server or other implementations like MySQL and SQLite. 
- There are other database technologies that do not implement SQL or AnsiSQL like MongoDB, Cassandra, and Elasticsearch but those will not be covered here.

## Database
- So far, we have said that SQL is the language for reading and writing information. Reading and writing to where? Databases.
- Databases are the main "shell" for storing information in organized and retrievable ways.

## Schema
- In databases, there is the concept of "schema" which helps determine database organization and structure. The term "schema" can be applied to the definition of tables like columns, keys, etc. 
- The term "Schema" can also be used to organize tables together in certain SQL Database technologies like SQL Server.
    - For example, a database used by a restaurant management application could organize the information in schemas like
        - `business`
            - These tables would store employee data, tax information, inventory, etc.
        - `work`
            - These tables would store things like recipes, drinks, orders, active tables, staff on duty as well as their assigned tables, etc
- In the case of SQLite, there's not really a 1-to-1 `create schema` functionality so the exercises will not be concerned with it. **The goal is that you have heard/seen the term "schema" for when you start seeing bigger, production databases.**

## Table
-  It is here that we are starting to use terms that are familiar to anyone that has used Microsoft Excel.
- **Tables are where the actual data is stored.**
- In a schema, we could have the previously mentioned tables but with descriptive and helpful names like:
    - Menu
    - Bar
    - Tables
    - ActiveStaff
    - Orders
    - Etc
- So, a whole table name ("fully qualified name") may look like this:
    - RestaurantDB.dbo.menu
    - When retrieving the data, we would do so with the query `SELECT * FROM RestaurantDB.dbo.menu;`
        - The exercises will go into more detail on this later.
    - When querying a database, you don't always need to include the DB name so we can shorten our name a query a little:
        - `SELECT * FROM dbo.menu;`
    - In the case of SQLite and this demo, we aren't concerning ourselves with "schema" in regards to table groupings so we'll just have the table names in our queries:
        - `SELECT * FROM menu;`

## Column
- Also like Excel, tables have columns with different data types to store that data.
    - The Menu table would have columns like
        - ItemId
        - Title
        - Desciption
        - Price
        - Available
        - Season
        - Allergies
    - Each menu item would then be a row in that table. Each of the above columns would be filled or left NULL.
- Like variables in your software language of choice, columns have data types. 
    - In techologies like SQL Server, you'll see datatypes like
        - INT
        - BIGINT
        - VARCHAR
            - This is usually just for text and is declared like `VARCHAR(50)` for how many characters the column will hold.
        - IMAGE
        - DATETIME
        - *The list goes on and on…*
    - In  SQLite, there are just a few options 
        - NULL
        - INT or INTEGER
        - TEXT
        - REAL
            - Used for floating point numbers (decimals).
        - BLOB
            - Basically anything else. Including files.

## Rows
- Finally, we get to the actual data. Each row in a table is an entry into the database.
- In the Menu table, we can now start adding data that would look like this:

| ItemID      | Title       | Description | Price       | Available   | Season      | Allergies   |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| 1234        | Burger      | Lorem Ipsum | 3.50        | TRUE        | All year    |Dairy,gluten |
| 5678        | Candy Apple | Lorem Ipsum | 5           | FALSE       | Autumn      |Apple,Caramel|


## Keys
- Depending on the type of table, it may be nice to make sure each row is unique. This can be done by a single column or group of columns called a Primary Key. 
- This may be a concept better shown in the exercises.
