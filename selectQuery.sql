/* SELECT ALL COLUMNS FROM THE CUSTOMERS TABLE WHERE THE NAME IS POLLY */
SELECT * 
FROM [CUSTOMERS] 
WHERE "NAME" = "POLLY"
/* SELECT ONLY THE NAME COLUMN FROM THE CUSTOMERS TABLE WHERE THE NAME IS POLLY */
SELECT "NAME" 
FROM [CUSTOMERS] 
WHERE "NAME" = "POLLY"

/* Inner Join */
SELECT [Customers.CustomerId], [Orders.OrderId]
FROM [Customers]
INNER JOIN [Orders] 
ON [Customers.CustomerID] = [Orders.OrderId]

/* Left Outer Join */
SELECT [Customers.CustomerId], [Orders.OrderId]
FROM [Customers]
LEFT OUTER JOIN [Orders] 
ON [Customers.CustomerID] = [Orders.OrderId]

/* Left Join */
SELECT [Customers.CustomerId], [Orders.OrderId]
FROM [Customers]
LEFT JOIN [Orders] 
ON [Customers.CustomerID] = [Orders.OrderId]

/* Right Join */
SELECT [Customers.CustomerId], [Orders.OrderId]
FROM [Customers]
RIGHT JOIN [Orders] 
ON [Customers.CustomerID] = [Orders.OrderId]

/* SELECT DISTINCT */
SELECT DISTINCT *
FROM [CUSTOMERS]

/* AND OR */

SELECT * 
FROM [ORDERS]
WHERE [OrderId] = "1"
AND [OrderDate] = "2022-12-3"
OR [OrderDate] = "2022-12-2"

/* UNION */

SELECT [CUSTOMERS.CUSTOMERID]
FROM [CUSTOMERS]
UNION
SELECT [ORDERS.OrderId]
FROM [ORDERS]

/* SELECT TOP n */
SELECT TOP 100
FROM [CUSTOMERS]

/* in keyword and order by */
SELECT *
FROM CUSTOMERS
WHERE CUSTOMERID 
IN (SELECT * FROM ORDERS WHERE OrderId = "1")
ORDER BY CUSTOMERID DESC

/* LIKE KEYWORD */
SELECT *
FROM CUSTOMERS
WHERE "NAME" LIKE "%POLLY%"


