**Enterprise-Analytics-Hub-Automated-ETL-BI-Reporting-System**

**Overview**

This project demonstrates an **end-to-end data warehousing and analytics solution** built using SQL Server and Power BI. The objective was to consolidate sales data from multiple business systems and transform it into a structured data warehouse to enable advanced **analytics and business intelligence reporting.**

The solution integrates data from **CRM and ERP systems**, processes it using **ETL pipelines**, and transforms it into a **business-ready data model** for analytical reporting and dashboard visualization.

This project showcases practical skills in:

	Data Engineering

	SQL Development

	Data Warehousing

	Data Modeling

	Exploratory Data Analysis

	Business Intelligence Reporting

**Data Architecture**

The project follows the **Medallion Architecture**, a modern data engineering pattern that organizes data into three layers:

**Bronze Layer – Raw Data**

The Bronze layer stores **raw data exactly as received from source systems**.

**Source Systems**

	CRM System

	ERP System

Data from both systems is ingested as **CSV files** and loaded into SQL Server tables without modification.

Purpose:

	Preserve original source data

	Enable traceability and auditing

**Silver Layer – Cleaned & Standardized Data**

In the Silver layer, raw data undergoes **data cleansing and transformation**.

Key processes include:

	Handling missing values

	Removing duplicates

	Standardizing formats

	Normalizing data structures

	Resolving data quality issues

The cleaned data is structured and prepared for analytical processing.

**Gold Layer – Business-Ready Data**

The Gold layer contains **analytics-ready data models** designed for reporting and business insights.

Key features:

	Star Schema Design

	Fact Tables for sales transactions

	Dimension Tables for customers, products, and time

This structure enables **fast analytical queries and efficient dashboard reporting**.

**ETL Pipeline**

SQL-based ETL pipelines were built to process and move data through the warehouse layers.

**ETL Workflow**

	Extract data from CRM and ERP source systems.
	
	Load raw datasets into the **Bronze layer**.
	
	Perform cleansing and transformation in the **Silver layer**.
	
	Load structured datasets into the **Gold layer** using a **star schema model**.

The pipeline ensures data consistency and prepares datasets for analytical workloads.

**Data Modeling**

The Gold layer uses a **Star Schema** optimized for analytical queries.

**Fact Table**

Fact_Sales

	Sales transactions
	
	Order quantity
	
	Revenue
	
	Order date

**Dimension Tables**

	Dim_Customers
	
	Dim_Products
	
	Dim_Date

This model enables efficient analysis of:

	Customer behavior
	
	Product performance
	
	Sales trends

**Exploratory Data Analysis (EDA)**

Exploratory analysis was performed using SQL and Excel to understand data patterns and prepare analytical features.

	Key analysis areas:
	
	Customer purchasing behavior
	
	Product performance trends
	
	Seasonal sales patterns
	
	Revenue contribution by product categories

This analysis helped define key metrics and reporting KPIs.

**Analytics Reports**

Two analytical reports were created to provide actionable insights.

**Customer Report**

**Purpose**

Provides a comprehensive view of **customer behavior and purchasing patterns**.

**Key Metrics**

Customer segmentation:

	VIP
	
	Regular
	
	New

**Aggregated metrics:**

	Total orders
	
	Total sales
	
	Total quantity purchased
	
	Total products purchased
	
	Customer lifespan

**Calculated KPIs:**

	Recency (months since last purchase)
	
	Average Order Value (AOV)
	
	Average Monthly Spend

These insights help identify** high-value customers and purchasing trends.**

**Product Performance Report**

**Purpose**

Provides insights into **product sales performance and revenue contribution.**

**Key Metrics**

Product attributes:

	Product name
	
	Category
	
	Subcategory
	
	Cost

Aggregated metrics:

	Total orders
	
	Total sales
	
	Total quantity sold
	
	Unique customers
	
	Product lifespan

Calculated KPIs:
	
	Recency (months since last sale)
	
	Average Order Revenue
	
	Average Monthly Revenue

Products were segmented into:

	High Performers
	
	Mid Performers
	
	Low Performers

This helps businesses identify **top-performing products and revenue drivers**.

**Power BI Dashboard**

An interactive **Power BI dashboard** was developed to visualize key business metrics.

Dashboard insights include:

	Revenue trends
	
	Monthly sales performance
	
	Product category performance
	
	Customer purchasing behavior
	
	Regional sales distribution

The dashboard allows stakeholders to **explore insights interactively and support data-driven decision making.**

**Technology Stack**

	SQL Server
	
	T-SQL
	
	Power BI
	
	Excel
	
	ETL Pipelines
	
	Star Schema Data Modeling
	
	Data Warehousing (Medallion Architecture)

**Key Skills Demonstrated**

This project demonstrates expertise in:

	Data Warehousing Architecture
	
	SQL Development
	
	ETL Pipeline Design
	
	Data Modeling
	
	Exploratory Data Analysis
	
	Business Intelligence
	
	Dashboard Development

**Project Impact**

The solution transforms raw business data into a structured analytics platform that enables:

	Better understanding of customer behavior
	
	Identification of top-performing products
	
	Tracking of sales performance trends
	
	Data-driven business decision making
	
