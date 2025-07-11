
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



--BOTTOM 3 REGIONS BY SALES
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

--  Corporate Customer placed the most number of orders in 2009 � 2012
SELECT 
	[Customer Segment],
	COUNT([Order ID]) As Total_Orders,
	DATEPART(YEAR, [Order Date]) As Order_Year

FROM 
	['KMS_Sql_Case_Study(1)$']

WHERE 
		DATEPART(YEAR, [Order Date]) BETWEEN 2009 AND 2012
Group By 
		DATEPART(YEAR, [Order Date]),[Customer Segment]
HAVING 
		
		[Customer Segment] = 'Corporate'
Order By
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
	[Order Priority],[Ship Mode]
	
