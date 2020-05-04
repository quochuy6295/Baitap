CREATE DATABASE  IF NOT EXISTS `adventureworks` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `adventureworks`;

/* Viết 1 query lấy thông tin "Name" từ bảng Production.Product có name
của ProductSubcategory là 'Saddles'.*/

USE adventureworks;
SELECT `Name` 
FROM product
WHERE ProductSubcategoryID = (select ProductSubcategoryID FROM productsubcategory where productsubcategory.`name` = 'Saddles');

/* Thay đổi câu Query 1 để lấy được kết quả sau.Mệnh đề WHERE trong subquery sẽ sử dụng ký tự wildcard ‘Bo%’ .
The WHERE clause in the subquery will now use the wildcard string ‘Bo%’ for a
comparison.*/
SELECT `name`
FROM product 
WHERE ProductSubcategoryID IN (select ProductSubcategoryID FROM productsubcategory where productsubcategory.`name`like 'BO%');

/*Viết câu query trả về tất cả các sản phẩm có giá rẻ nhất (lowest ListPrice) và Touring
Bike (nghĩa là ProductSubcategoryID = 3)*/
SELECT `name` from product where listprice =
(SELECT MIN(ListPrice) from product
WHERE ProductSubcategoryID = (SELECT ProductSubcategoryID  from ProductSubcategory where `name` ='Touring Bikes'));

/*Exercise 2: JOIN nhiều bảng
Viết query lấy danh sách tên country và province được lưu trong
AdventureWorks2008sample database.*/
SELECT co.`name` as country, sp.`name` as province FROM countryregion as co JOIN stateprovince as sp 
ON co.`CountryRegionCode` = sp.`CountryRegionCode`;

/*Tiếp tục với câu query trước và thêm điều kiện là chỉ lấy country Germany và Canada */

SELECT co.`name` as country, sp.`name` as provice FROM countryregion as co JOIN stateprovince as sp 
ON co.`CountryRegionCode` = sp.`CountryRegionCode`
WHERE co.`name` = 'Germany' OR co.`name` = 'Canada'
ORDER BY co.`name`;


/*SalesOrderID, OrderDate and SalesPersonID. Từ bảng SalesPerson, chúng ta lấy cột
BusinessEntityID (là định danh của người sales), Bonus and the SalesYTD (là đã sale
được bao nhiêu người trong năm nay)
Hướng dẫn: Join SalesOrderHeader và SalesPerson để hạn chế kết quả non-Internet
orders (order được xử lý trên Internet có OnlineOrderFlag = 1 và cột SalesPersonID =
null)
Vì không đủ chỗ nên đã lược cột OrderDate
Học sinh khi làm bài cần phải thêm cột OrderDate vào bài làm*/
SELECT 
    sa.SalesOrderID,
    sa.OrderDate,
    sa.SalesPersonID,
    sa.SalesPersonID AS BusinessEntityID,
    sp.Bonus,
    sp.SalesYTD
FROM
    salesperson AS sp
        JOIN
    salesorderheader as sa
ON sp.SalesPersonID = sa.SalesPersonID;

/*Sử dụng câu query, thêm cột JobTitle and xóa cột SalesPersonID và BusinessEntityID.*/

SELECT 
    sa.SalesOrderID,
    sa.OrderDate,
    sa.SalesPersonID,
    sa.SalesPersonID AS BusinessEntityID,
    sp.Bonus,
    sp.SalesYTD
FROM
    salesperson AS sp
        JOIN
    salesorderheader as sa
ON sp.SalesPersonID = sa.SalesPersonID
JOIN employee as em 
ON em.EmployeeID = sa.SalesPersonID;

DROP VIEW saleperson;

