# 🍫 End-to-End Chocolate Sales Analysis | SQL • Python • Power BI

## 📌 Project Overview

This project demonstrates a complete **End-to-End Data Analytics workflow** using **SQL Server, Python, and Power BI**. Starting with raw CSV files, the project covers database creation, data loading, data cleaning, validation, SQL analysis, Python exploratory data analysis (EDA), and an interactive Power BI dashboard to generate meaningful business insights for a chocolate retail business.

---

# 🛠 Tech Stack

* SQL Server (SSMS)
* Python
* Jupyter Notebook
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Power BI
* Git & GitHub

---

# 📂 Dataset

| Table         |   Records |
| ------------- | --------: |
| Customers     |    50,000 |
| Products      |       200 |
| Stores        |       100 |
| Sales (Raw)   | 1,000,000 |
| Sales (Final) |   990,236 |

---

# 🏗️ Project Workflow

```text
Raw CSV Files
      │
      ▼
Create SQL Database
      │
      ▼
Create Staging Tables
      │
      ▼
Bulk Insert CSV Files
      │
      ▼
Data Cleaning & Validation
      │
      ▼
Create Final Tables
      │
      ▼
SQL Exploratory Data Analysis
      │
      ▼
Python Data Analysis
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights & Recommendations
```

---

# 🧹 Data Cleaning & Validation

## Customers (50,000 Records)

* Checked total row count
* Validated NULL values
* Checked duplicate Customer IDs
* Validated Age (0–100)
* Validated Gender values
* Validated Loyalty Member (0/1)
* Converted Join Date to DATE datatype
* Verified data types using `sp_help`

**Result:** No NULLs, duplicates, or invalid records found.

---

## Products (200 Records)

* Checked NULL values
* Checked duplicate Product IDs
* Validated Cocoa Percentage (0–100)
* Validated Product Weight
* Validated Categories
* Verified Product Names

**Result:** All product records passed validation.

---

## Stores (100 Records)

* Checked NULL values
* Checked duplicate Store IDs
* Removed extra spaces using `TRIM()`
* Validated Store Types
* Verified Store Names

**Result:** All store records were clean and valid.

---

## Sales (1,000,000 Records)

Performed extensive validation:

* Checked NULL values
* Checked duplicate transactions
* Removed extra spaces
* Validated Order Dates
* Validated Quantity
* Validated Revenue
* Validated Cost
* Validated Profit
* Verified Profit Formula

```sql
Profit = Revenue - Cost
```

* Validated Customer Foreign Keys
* Validated Product Foreign Keys
* Validated Store Foreign Keys

---

# 🚨 Data Quality Issue Resolved

During Product Foreign Key validation:

* **STG_PRODUCTS contained 200 Product IDs**
* **STG_SALES contained 202 Product IDs**

Two Product IDs were missing from the Product Master table, creating **9,764 unmatched sales records**.

These invalid records were identified using a `LEFT JOIN` and removed before loading the final Sales table.

```sql
DELETE s
FROM STG_SALES s
LEFT JOIN STG_PRODUCTS p
ON s.product_id = p.product_id
WHERE p.product_id IS NULL;
```

### Final Validation

| Table     |   Initial |       Final |
| --------- | --------: | ----------: |
| Customers |    50,000 |      50,000 |
| Products  |       200 |         200 |
| Stores    |       100 |         100 |
| Sales     | 1,000,000 | **990,236** |

This ensured referential integrity and a production-ready database.

---

# 📊 SQL Analysis

The following business analyses were performed:

* Total Revenue
* Total Profit
* Total Orders
* Total Quantity Sold
* Top 10 Products by Revenue
* Top 10 Products by Profit
* Revenue by Category
* Profit by Category
* Revenue by Country
* Revenue by City
* Top Stores
* Top Customers
* Loyalty Member Analysis
* Gender-wise Revenue
* Age Group Analysis
* Monthly Revenue Trend
* Monthly Profit Trend
* Average Order Value
* Best Selling Products
* Highest Discount Products
* Revenue Contribution %
* Running Revenue
* RANK()
* ROW_NUMBER()
* LAG()

---

# 🐍 Python Analysis

Performed using Pandas, NumPy, Matplotlib, and Seaborn.

* Data Loading
* Data Cleaning
* Exploratory Data Analysis
* Revenue Analysis
* Profit Analysis
* Product Performance
* Customer Analysis
* Monthly Sales Trend
* Visualizations

---

# 📈 Power BI Dashboard

Dashboard includes:

* KPI Cards
* Total Revenue
* Total Profit
* Total Orders
* Quantity Sold
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

# 📌 Project KPIs

| KPI                 |             Value |
| ------------------- | ----------------: |
| Total Revenue       | **25.24 Million** |
| Total Profit        | **10.10 Million** |
| Total Orders        |       **990,236** |
| Quantity Sold       |     **2,970,470** |
| Average Order Value |         **25.49** |

---

# 💡 Key Business Insights

* Dark Chocolate 50% generated the highest revenue (**1.77 Million**).
* Praline was the highest revenue category (**6.66 Million**).
* Canada generated the highest country-wise revenue (**5.03 Million**).
* Toronto was the top-performing city (**4.55 Million**).
* Loyalty members generated slightly higher revenue than non-members.
* Customers above 50 years contributed the highest revenue.
* February consistently recorded the lowest monthly profit.
* Revenue remained stable across both years, indicating consistent business performance.

---

# 🚀 Business Recommendations

* Increase inventory for top-selling chocolate products.
* Expand successful product lines in Canada and Toronto.
* Improve promotional campaigns during February.
* Reward loyal customers with exclusive offers.
* Introduce premium chocolate bundles.
* Focus marketing on high-performing products.
* Monitor product master data to prevent invalid Product IDs in future ETL processes.

---

# 📚 Skills Demonstrated

* SQL Server
* Database Design
* ETL Process
* Data Cleaning
* Data Validation
* Foreign Key Validation
* Data Modeling
* Window Functions
* Common Table Expressions (CTEs)
* Exploratory Data Analysis (EDA)
* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Power BI
* Business Intelligence
* Dashboard Design
* Git
* GitHub

---

# 👨‍💻 Author

**Saswat**

**Aspiring Data Analyst**

**Skills:** SQL • Python • Power BI • Excel • Data Cleaning • Data Visualization • Business Analytics


