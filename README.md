# DSA-capstone-project
Final capstone project for the DSA program. This repository features two comprehensive case studies Kultra Mega Stores & Palmoria Group. The projects demonstrate real-world analysis of sales and HR datasets using SQL, Excel, and Power Bi, with a focus on delivering actionable insights and measurable business impact.

## Case Study 2: Kultra Mega Stores Inventory Analysis
### Company Overview

Kultra Mega Stores (KMS) is a leading provider of office supplies and furniture, headquartered in Lagos, Nigeria. Its customer base includes individuals, small retail businesses, and large corporate (wholesale) clients. This analysis focuses on the Abuja division, using historical data from 2009 to 2012.

### 📌 Project Objective

To analyze historical order data in order to uncover patterns and deliver strategic recommendations across sales performance, shipping efficiency, and customer behavior.

### 📁 Dataset Source

Provided by Data School Africa (DSA).

### 🧰 Tools Used

- Microsoft Excel
- Microsoft SQL Server

### 🔍 Key Analyses

### Case Scenario I:

- Identify the product category with the highest sales
- Highlight the top 3 and bottom 3 sales regions
- Calculate total appliance sales in Ontario
- Provide revenue advice for the bottom 10 customers
- Determine the most expensive shipping method

 
### Case Scenario II:

- Identify the most valuable customers and their purchase patterns
- Find the small business customer with the highest total sales
- Determine the corporate customer with the most orders (2009–2012)
- Identify the most profitable consumer customer
- Analyze returned items and their customer segments
- Evaluate the cost of shipping methods in relation to order priority

## Case Study 3: Palmoria Group HR Data Analysis
### Company Overview

Palmoria Group is a manufacturing company based in Nigeria, currently facing public scrutiny over gender inequality across its workforce in three regions. In response, management has requested a data-driven investigation to identify HR disparities and address potential issues ahead of future expansion.

### 📌 Project Objectives

- Uncover gender, pay, and departmental disparities
- Identify compliance risks and structural imbalances
- Deliver visual insights to guide executive decision-making

### 📁 Dataset Source

Provided by Data School Africa (DSA)

### 🧰 Tools Used

- Microsoft Excel
- Power BI (Power Query, DAX, Relationships)
  
### 🔍 Key Analysis

- Gender distribution by department and region
- Performance ratings segmented by gender
- Gender pay gap analysis by department and region
- Salary distribution grouped in $10,000 bands
- Compliance check for minimum salary threshold ($90,000)
- Bonus Pay Analysis:

- Applied business rules to assign bonuses based on performance
- Calculated total compensation (base salary + bonus)
- Aggregated bonus payouts by region and company-wide
  
### Techniques Applied
- Developed DAX measures to answer business-specific questions
- Used Power Query to clean data and remove invalid entries
- Managed data relationships using appropriate cardinality (e.g., employee to bonus rule table)
- Created calculated columns for bonus amounts and total compensation
  
### 📌 How to Use
- Open the Excel or Power BI files in their respective folders
- Use pivot tables and slicers to explore the insights
- SQL queries for the Kultra Mega Stores case are also included (SQL Server)

  KMS SQL
  --Kultra Mega Stores Inventory

 --product category with highest sales
 select TOP 1
		[Product Category], 
		SUM(sales) as total_sales
from ['KMS_Sql_Case_Study(1)$']
Group By 
		[Product Category]
Order By
		total_sales DESC

--TOP 3 REGIONS BY SALES
select TOP 3
		Region, 
		SUM(sales) as total_sales
from ['KMS_Sql_Case_Study(1)$']
Group By 
		Region
Order By
		total_sales DESC
  -BOTTOM 3 REGIONS BY SALES
select TOP 3
		Region, 
		SUM(sales) as total_sales
from ['KMS_Sql_Case_Study(1)$']
Group By 
		Region
Order By
		total_sales 

-- total sales of appliances in Ontario
select 
		Region,
		[Product Sub-Category],
		SUM(sales) as total_sales

from ['KMS_Sql_Case_Study(1)$']

WHERE 
	[Product Sub-Category]= 'Appliances' 
	AND Region = 'Ontario'

GROUP BY 
		Region,
		[Product Sub-Category
  GROUP BY 
		Region,
		[Product Sub-Category]
  --KMS on what to do to increase the revenue from the bottom 10 customers
SELECT TOP 10
			[Customer Name],
			SUM(sales) as total_sales	
FROM ['KMS_Sql_Case_Study(1)$']
Group By 
		[Customer Name]
Order By
		total_sales 

-- HIGHEST SHIPPING COST
SELECT TOP 1
			[Ship Mode],
			SUM([Shipping Cost]) AS Total_shipcost
FROM ['KMS_Sql_Case_Study(1)$']
Group By 
		[Ship Mode]
Order By
	Total_shipcost DESC

-- MOST VALUABLE CUSTOMERS
SELECT TOP 10
			[Customer Name],
		[Product Sub-Category],
			SUM(sales) as total_sales	
FROM ['KMS_Sql_Case_Study(1)$']
Group By 
		[Customer Name],
		[Product Sub-Category]
  Order By
		total_sales DESC

-- HIGHEST SMALL BUSINESS CUSTOMER

SELECT TOP 1
			[Customer Name],
		[Customer Segment],
			SUM(sales) as total_sales	
FROM ['KMS_Sql_Case_Study(1)$']

WHERE [Customer Segment] = 'SMALL BUSINESS'
Group By 
		[Customer Name],
		 [Customer Segment] 
Order By
		total_sales DESC

--  Corporate Customer placed the most number of orders in 2009 – 2012
SELECT 
	[Customer Segment],
	COUNT([Order ID]) As Total_Orders,
	DATEPART(YEAR, [Order Date]) As Order_Year

FROM 
	['KMS_Sql_Case_Study(1)$']

WHERE 
		DATEPART(YEAR, [Order Date]) BETWEEN 2009 AND 2012
Group By 
DATEPART(YEAR, [Order Date]);

--consumer customer was the most profitable one
SELECT TOP 1
			[Customer Name],
		[Customer Segment],
			SUM(sales) as total_sales	
FROM ['KMS_Sql_Case_Study(1)$']

WHERE [Customer Segment] = 'CONSUMER'
Group By 
		[Customer Name],
		 [Customer Segment] 
Order By
		total_sales DESC

-----customer returned items, and what segment do they belong to?
SELECT 
		[Customer Name],
		[Customer Segment],
		COUNT([Order ID]) AS ReturnCount,
		SUM(Profit) As TotalLoss 
  FROM ['KMS_Sql_Case_Study(1)$']

WHERE Profit <0

Group By
	[Customer Name],[Customer Segment]

Order By 
	ReturnCount DESC;

-------Q11
SELECT 
	[Order Priority],
	[Ship Mode],
	COUNT([Order ID]) AS NumOrders,
	Avg([Shipping Cost]) As AvgShippingCost

FROM ['KMS_Sql_Case_Study(1)$']

Group By 
	[Order Priority],[Ship Mode]

Order By
	[Order Priority],[Ship Mode]



### Palmora Group Data Visualisation

![Image Alt]()
  
## 👤 Author

Olamide Arowolo
