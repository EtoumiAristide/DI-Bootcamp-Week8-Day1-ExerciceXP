/* Exercise 1 : Items And Customers */

/* 1) Create a database called public. */

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


/* 2) Add two tables:
		items
		customers.*/
		
CREATE table items(
	id SERIAL PRIMARY KEY,
	libelle VARCHAR(50) NOT NULL,
	price REAL NOT NULL
);

CREATE table customers(
	id SERIAL PRIMARY KEY,
	nom VARCHAR NOT NULL,
	prenom VARCHAR NOT NULL
);


/*
	Follow the instructions below to determine which columns and data types to add to the two tables:
	
	Add the following items to the items table:
	1 - Small Desk – 100 (ie. price)
	2 - Large desk – 300
	3 - Fan – 80
*/

INSERT INTO items(libelle, price)
VALUES(
	("Small Desk", 100),
	("Large Desk", 300),
	("Fan", 80),
);

/*
	Add 5 new customers to the customers table:
	1 - Greg - Jones
	2 - Sandra - Jones
	3 - Scott - Scott
	4 - Trevor - Green
	5 - Melanie - Johnson
*/
INSERT INTO customers(nom, prenom)
VALUES (
	("Jones", "Greg"),
	("Jones", "Sandra"),
	("Scott", "Scott"),
	("Green", "Trevor"),
	("Melanie", "Johnson"),
)

-- Use SQL to fetch the following data from the database
-- 1/ All the items
SELECT * FROM items;

-- 2/ All the items with a price above 80 (80 not included).
SELECT * 
FROM items 
WHERE items.price > 80;

-- 3/ All the items with a price below 300. (300 included)
SELECT *
FROM items 
WHERE items.price <= 300;

-- 3/All customers whose last name is ‘Smith’ (What will be your outcome?).
SELECT *
FROM customers
WHERE customers.prenom = 'Smith';

-- 4/All customers whose last name is ‘Jones’.
SELECT * 
FROM customers
WHERE customers.prenom = 'Jones';

-- 5/All customers whose firstname is not ‘Scott’.
SELECT *
FROM customers
WHERE customers.prenom <> 'Scott'