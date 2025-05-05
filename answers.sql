--Question 1

SELECT 
    OrderID,
    CustomerName,
    TRIM(value) AS Product
FROM 
    ProductDetail
CROSS APPLY 
    STRING_SPLIT(Products, ',');


 --Question 2

SELECT DISTINCT 
    OrderID,
    CustomerName
INTO Orders
FROM OrderDetails;

SELECT 
    OrderID,
    Product,
    Quantity
INTO OrderProducts
FROM OrderDetails;
