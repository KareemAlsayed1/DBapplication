.mode column
.headers on
PRAGMA foreign_keys = ON; 

-- Querying data
-- Every month the following reports need to be run:
-- Find the top 5 offices with the most sales for that month.
SELECT "1. Finding the top 5 offices with the most sales for that month (Feb.)";
SELECT "---------------------------------";
SELECT Office Office_ID , COUNT (*) NO_Sold FROM Houses 
INNER JOIN Sales ON Houses.ID=Sales.HouseID
WHERE  strftime('%m', Sales.SoldDate) = "02"
GROUP BY Office
ORDER BY NO_Sold DESC
Limit 5;


-- Find the top 5 estate agents who have sold the most (include their contact details and their sales details so that it is easy contact them and congratulate them).
SELECT "2. Finding the top 5 estate agents who have sold the most";
SELECT "---------------------------------";
SELECT Agent.ID as "Agent ID", Agent.FirstName as "First Name" , Agent.LastName as "Last Name" ,
Agent.Email as "Email",Agent.Phone as "Phone Number" ,
COUNT (*) NO_Sold FROM Sales 
INNER JOIN Agent ON Sales.SellingAgent=Agent.ID
WHERE  strftime('%m', Sales.SoldDate) = "02"
GROUP BY Agent.ID
ORDER BY NO_Sold DESC
Limit 5;


-- Calculate the commission that each estate agent must receive and store the results in a separate table.
SELECT "3. Calculating the commission that each estate agent must receive";
SELECT "-----------------------------------------------------";
INSERT INTO CommissionSummary (AgentID, TotalComission)
SELECT SellingAgent as "Agent ID", SUM (Commission) FROM AgentCommission
GROUP BY SellingAgent;

SELECT * FROM CommissionSummary;



-- For all houses that were sold that month, calculate the average number of days that the house was on the market.
SELECT "4. Calculating the average number of days that the house was on the market";
SELECT "-----------------------------------------------------";
SELECT Round (AVG (julianday (Sales.SoldDate) - julianday (Houses.DateListing))) as "Average number of days that the house was on the market" FROM Sales
INNER JOIN Houses ON Houses.ID=Sales.HouseID
WHERE  strftime('%m', Sales.SoldDate) = "02";



-- For all houses that were sold that month, calculate the average selling price
SELECT "5. Calculating the average selling price";
SELECT "-----------------------------------------------------";
SELECT ROUND( AVG (FinalPrice)) as "Average Selling Price" From Sales
WHERE  strftime('%m', Sales.SoldDate) = "02";

-- Find the zip codes with the top 5 average sales prices
SELECT "6.  Finding the zip codes with the top 5 average sales prices";
SELECT "-----------------------------------------------------";
SELECT Houses.ZipCode ,ROUND( AVG (FinalPrice)) as "Average Selling Price" From Sales
INNER JOIN Houses ON Houses.ID=Sales.HouseID
WHERE  strftime('%m', Sales.SoldDate) = "02"
GROUP BY Houses.ZipCode
ORDER BY "Average Selling Price" DESC
LIMIT 5;