create database CHACOLATE_DB;
GO

USE CHACOLATE_DB;
GO

---CREATE Staging Tables
---1 STG_CUSTOMERS
CREATE TABLE STG_CUSTOMERS (
    customer_id VARCHAR(50),
    age INT,
    gender VARCHAR(20),
    loyalty_member INT,
    join_date VARCHAR(50)
);  
--CHECK : Verify the structure of the STG_CUSTOMERS table
SELECT * FROM STG_CUSTOMERS;

--2 STG_PRODUCTS
CREATE TABLE STG_PRODUCTS (
    product_id VARCHAR(50),
    product_name VARCHAR(255),
    brand VARCHAR(100),
    category VARCHAR(100),
    cocoa_percent INT,
    weight_g INT
);
---CHECK : Verify the structure of the STG_PRODUCTS table
SELECT * FROM STG_PRODUCTS;
---3 STG_STORES
CREATE TABLE STG_STORES (
    store_id VARCHAR(50),
    store_name VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    store_type VARCHAR(100)
);
---CHECK : Verify the structure of the STG_STORES table
SELECT * FROM STG_STORES;

---4 STG_SALES
CREATE TABLE STG_SALES (
    order_id VARCHAR(50),
    order_date VARCHAR(50),
    product_id VARCHAR(50),
    store_id VARCHAR(50),
    customer_id VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(10,2),
    revenue DECIMAL(12,2),
    cost DECIMAL(12,2),
    profit DECIMAL(12,2)
);
---CHECK : Verify the structure of the STG_SALES table
SELECT * FROM STG_SALES;

  ---BULK INSERT ALL TABLES

  ---STG_CUSETOMERS
  BULK INSERT STG_CUSTOMERS
FROM 'C:\Users\SASWAT\OneDrive\Desktop\Chacolate data\customers.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

SELECT COUNT(*) AS 
FROM STG_CUSTOMERS;--50000 ROWS

---STG_PRODUCTS
BULK INSERT STG_PRODUCTS
FROM 'C:\Users\SASWAT\OneDrive\Desktop\Chacolate data\products.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

SELECT COUNT(*) AS Total_Rows
FROM STG_PRODUCTS;--200ROWS

---STG_STORES
BULK INSERT STG_STORES
FROM 'C:\Users\SASWAT\OneDrive\Desktop\Chacolate data\stores.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

SELECT COUNT(*) AS Total_Rows
FROM STG_STORES;--100ROWS

---STG_SALES
BULK INSERT STG_SALES
FROM 'C:\Users\SASWAT\OneDrive\Desktop\Chacolate data\sales.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

SELECT COUNT(*) AS Total_Rows
FROM STG_SALES;--100000ROWS