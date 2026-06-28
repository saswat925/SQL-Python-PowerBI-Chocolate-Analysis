# 🍫 End-to-End Chocolate Sales Analysis | SQL • Python • Power BI

![SQL](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge\&logo=microsoftsqlserver\&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge\&logo=python\&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge\&logo=powerbi\&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge\&logo=github)

---

# 📌 Project Overview

This project demonstrates a complete **End-to-End Data Analytics Workflow** using SQL Server, Python, and Power BI.

Starting from raw CSV files, the project covers data loading, cleaning, validation, transformation, exploratory data analysis (EDA), business insights, and interactive dashboard creation.

The goal is to analyze chocolate sales performance and generate actionable business insights.

---

# 🎯 Objectives

* Build an SQL database from scratch
* Import raw CSV files
* Clean and validate data
* Create a relational database model
* Perform SQL Exploratory Data Analysis (EDA)
* Analyze data using Python
* Build an interactive Power BI dashboard
* Generate business recommendations

---

# 🛠 Tech Stack

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* Python
* Jupyter Notebook
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Power BI
* Git
* GitHub

---

# 📂 Dataset

The project contains four datasets.

| Dataset   | Records |
| --------- | ------- |
| Customers | 50,000  |
| Products  | 200     |
| Stores    | 100     |
| Sales     | 990,236 |

---

# 📁 Project Structure

```
Chocolate-Sales-Analysis/

│
├── Dataset/
│      customers.csv
│      products.csv
│      stores.csv
│      sales.csv
│
├── SQL/
│      01_Create_Database.sql
│      02_Create_Staging_Tables.sql
│      03_Bulk_Insert.sql
│      04_Data_Cleaning.sql
│      05_Create_Final_Tables.sql
│      06_Load_Data.sql
│      07_EDA.sql
│      08_Business_Insights.sql
│
├── Python/
│      Chocolate_Analysis.ipynb
│      requirements.txt
│
├── PowerBI/
│      Chocolate Dashboard.pbix
│
├── Images/
│      Dashboard.png
│      Data_Model.png
│
└── README.md
```

---

# ⚙️ SQL Workflow

## Step 1

Create Database

```
CREATE DATABASE CHOCOLATE_DB;
```

---

## Step 2

Create Staging Tables

* STG_CUSTOMERS
* STG_PRODUCTS
* STG_STORES
* STG_SALES

---

## Step 3

Bulk Insert CSV Files

* customers.csv
* products.csv
* stores.csv
* sales.csv

---

## Step 4

Data Cleaning

Performed validation for

✔ NULL values

✔ Duplicate records

✔ Invalid dates

✔ Invalid ages

✔ Negative values

✔ Profit validation

✔ Extra spaces

✔ Foreign key validation

---

## Step 5

Create Final Tables

* Customers
* Products
* Stores
* Sales

Primary Keys

Foreign Keys

Star Schema

---

# 🧹 Data Cleaning Summary

### Customers

* Checked NULL values
* Checked duplicate Customer IDs
* Validated Age
* Validated Gender
* Validated Loyalty Member
* Converted Join Date to DATE datatype

---

### Products

* Checked NULL values
* Removed duplicate Product IDs
* Validated Cocoa Percentage
* Validated Product Weight
* Verified Product Categories

---

### Stores

* Checked NULL values
* Removed duplicates
* Removed extra spaces
* Validated Store Type

---

### Sales

* Checked NULL values
* Checked duplicate Orders
* Removed invalid Product IDs
* Validated Dates
* Validated Revenue
* Validated Profit
* Validated Cost
* Validated Foreign Keys

Result:

Initial Sales Records : 1,000,000

Final Sales Records : **990,236**

9,764 invalid sales records were removed due to missing Product IDs.

---

# 📊 SQL Analysis

The following analyses were performed.

* Total Revenue
* Total Profit
* Total Orders
* Total Quantity Sold
* Top Products
* Top Categories
* Revenue by Country
* Revenue by City
* Top Customers
* Loyalty Analysis
* Gender Analysis
* Age Group Analysis
* Monthly Revenue Trend
* Monthly Profit Trend
* Best Selling Products
* Revenue Contribution
* Running Revenue
* Ranking using Window Functions
* LAG Analysis
* ROW_NUMBER Analysis

---

# 🐍 Python Analysis

Python was used for

* Data Import
* Data Cleaning
* Data Validation
* Exploratory Data Analysis
* Revenue Analysis
* Profit Analysis
* Product Analysis
* Customer Analysis
* Monthly Trend Analysis
* Data Visualization

Libraries Used

```
pandas
numpy
matplotlib
seaborn
```

---

# 📈 Power BI Dashboard

Dashboard includes

✅ KPI Cards

* Total Revenue
* Total Profit
* Total Orders
* Quantity Sold

---

Visualizations

* Revenue by Category
* Revenue by Country
* Revenue by City
* Monthly Revenue Trend
* Monthly Profit Trend
* Top Products
* Top Customers
* Loyalty Analysis
* Gender Analysis
* Age Group Analysis
* Revenue Contribution

---

# 📊 Project KPIs

| KPI                 | Value         |
| ------------------- | ------------- |
| Total Revenue       | 25.24 Million |
| Total Profit        | 10.10 Million |
| Total Orders        | 990,236       |
| Quantity Sold       | 2,970,470     |
| Average Order Value | 25.49         |

---

# 🏆 Key Insights

## Revenue

Total Revenue

**25.24 Million**

Total Profit

**10.10 Million**

Total Orders

**990,236**

Average Order Value

**25.49**

---

## Best Selling Product

Dark Chocolate 50%

Revenue

1.77 Million

Quantity Sold

208,996

---

## Highest Revenue Category

Praline

Revenue

6.66 Million

---

## Top Country

Canada

Revenue

5.03 Million

---

## Top City

Toronto

Revenue

4.55 Million

---

## Customer Insights

* Loyalty members generated slightly more revenue than non-members.
* Male customers generated slightly higher revenue than female customers.
* Customers aged above 50 generated the highest revenue.

---

## Monthly Trend

* February recorded the lowest profit.
* January, March, July and August recorded the highest profit.
* Revenue remained consistent across both years.

---

## Discount Analysis

Average discounts ranged between

5.64% - 5.68%

showing a consistent pricing strategy.

---

# 💡 Business Recommendations

* Increase inventory of Dark Chocolate products.
* Expand operations in Canada and Toronto.
* Improve promotional campaigns during February.
* Reward loyal customers through exclusive offers.
* Introduce premium chocolate bundles.
* Focus marketing on high-performing products.
* Optimize underperforming products through targeted promotions.

---

# 📷 Dashboard Preview

Add your Power BI Dashboard screenshot here.

```
Images/Dashboard.png
```

---

# 🚀 Future Improvements

* Build a sales forecasting model
* Customer segmentation using Machine Learning
* Customer Lifetime Value Analysis
* RFM Analysis
* Predictive Analytics
* Automated ETL Pipeline
* Azure SQL Integration

---

# 📚 Skills Demonstrated

* SQL
* Data Cleaning
* Data Validation
* Data Modeling
* Window Functions
* Common Table Expressions
* Exploratory Data Analysis
* Python
* Data Visualization
* Power BI
* Dashboard Design
* Business Intelligence
* Git
* GitHub

---

# 👨‍💻 Author

**Saswat**

Aspiring Data Analyst

**Skills**

* SQL
* Python
* Power BI
* Excel
* Data Cleaning
* Data Visualization
* Business Analytics

