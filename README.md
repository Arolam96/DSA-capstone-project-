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

### KMS SQL File 
  https://github.com/Arolam96/DSA-capstone-project-/blob/1d2d4453efabc8b1a9570f5089571d9185e780b6/Kultra%20Mega%20Stores%20Inventory%20-%20SQL.sql

### Answer to Question 11 
### Findings:
	1.	High Priority Orders (Critical, High):
	•	Should be shipped using Express Air (fastest), even if expensive.
	•	However, most expensive shipping cost is via Delivery Truck ($45–47), which is actually the slowest, and is being used for Critical and High orders.
	•	Express Air cost is only ~$8.7, yet it’s underused where it should be prioritized.
	2.	Low Priority Orders (Low, Medium, Not Specified):
	•	Should ideally be shipped via Delivery Truck to minimize cost.
	•	But most are shipped using Express Air and Regular Air, even though speed isn’t required.
	•	For example:
	•	Low Priority + Express Air = $8.17
	•	Not Specified + Express Air = $8.17
	•	These could have been handled more economically.

### Conclusion: Shipping cost allocation is not appropriate.
	•	The slowest method (Delivery Truck) is being used for Critical and High orders, despite its high cost, which defeats the urgency logic.
	•	Meanwhile, Express Air is used more for Low/Not Specified priority orders — where speed is not required, leading to unnecessary spending.
	•	This suggests inefficient logistics planning: neither speed nor cost optimization is aligned with order priority.

### Recommendation:
	•	Re-align shipping methods:
	•	Use Express Air only for Critical & High priority.
	•	Use Delivery Truck or Regular Air for Low/Medium/Not Specified to control cost.

### Palmora Group Data Visualisation

![Image Alt](https://github.com/Arolam96/DSA-capstone-project-/blob/d65ed0132cb2cbe9321a7c2e881fff6fd1152107/palmora%20group%20chart.jpg)
![Image Alt](https://github.com/Arolam96/DSA-capstone-project-/blob/e9cea547b7cc6eab7b9df5413518fe92fbfce3ea/palmora%20group%20chart%202.jpg)
![Image Alt](https://github.com/Arolam96/DSA-capstone-project-/blob/df7b07871c74074ec3d3cce975e6db2d9733191d/palmora%20group%20chart%203.jpg)


  
## 👤 Author

Olamide Arowolo
