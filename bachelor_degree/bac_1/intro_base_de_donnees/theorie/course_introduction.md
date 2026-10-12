# What is a database ?

> We will be creating and managing our database with wamp server or lamp server
> on linux.

- composed of multiple tables.
    - Each table contains a single subject matter.
- Think about how the data will be used in order to use the appropriate format
- A primary key is what makes a record **unique**.
    - The value cannot be `null`
- A foreign key is a reference to a field of record to another table.
- There are three kinds of relationships:   
   - A 1 to 1 relationship
   - A 1 to many relationship
   - A manay to many relationship
    - we have to create an intermidiary table that joins the data of two tables.
        - Minimum three fields: the ids and the foreign keys of the two tables.
