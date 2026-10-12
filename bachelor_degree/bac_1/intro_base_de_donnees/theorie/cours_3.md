Date: 8/10/2026
Teacher: Sophie Collard

# Recap

- A primary key must be unique and cannot be null.

- A projection is selecting the numbers of columns of table.
```
SELECT * FROM album;
```

- Selection is extracting only the data we are interested in.
```
SELECT * FROM album WHERE LIKE "a%"
```

- SQL is case insensitive.

# Sorting

- We can sort data by using `ORDER BY` that can be `ASC` or `DESC`.

```
SELECT dateAlb, titreAlb FROM album ORDER BY dateAlb ASC;
-- or
SELECT dateAlb; titreAlb FROM album ORDER BY 1 ASC;
-- or
SELECT dateAlb, titreAlb FROM album ORDER BY 1 ASC, titreAlb DESC;
```
- By default the sorting is done by ascending order;

- We can give an alias to a column by using `AS`
```
SELECT dateAlb AS date, titreAlb FROM album;
```

- Quotation marks should be used for aliasing a column using multiple words.

- The `as` keyword is not always necessary.

- We can also sort columns using aliases.

# Multiple conditions (AND, OR)
```
SELECT nomPers, prenomPers FROM album WHERE prenomPers is NULL AND gentilPers=0;
```

```
SELECT titreAlb FROM album WHERE titreAlb="Le lotus blue" OR titreAlb="COKE EN STOCK";
```

- With `AND` both conditions have to be true.

- With `OR` only one condition has to be true, both results are returned if
  both conditions are true.

# Limit and exclude results

- We can specify the numbers of records to retreive from the db.
```
SELECT * FROM album ORDER BY dateAlb DESC LIMIT 1;
```

- With `offset` we can exclude certains numbers of records
```
SELECT * FROM album ORDER BY 
dateAlb DESC LIMIT 1 OFFSET 1;
-- or
SELECT * FROM album ORDER BY
dateAlb DESC LIMIT 3,2;
```
