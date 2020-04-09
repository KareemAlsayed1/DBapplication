.mode column
.headers on
PRAGMA foreign_keys = ON; 

-- Inserting sample data 

-- Summary table
INSERT INTO Summary VALUES (1, 0, 0);

-- Zipcodes
INSERT INTO ZipCodes VALUES (94103, 'South Of Market', 'San Francisco', 'CA');
INSERT INTO ZipCodes VALUES (10005, 'Wall Street', 'New York', 'NY');
INSERT INTO ZipCodes VALUES (30331, 'Fulton', 'Atlanta', 'GA');
INSERT INTO ZipCodes VALUES (33756, 'Clearwater', 'Clearwater', 'FL');
INSERT INTO ZipCodes VALUES (33956, 'Lee', 'Saint James', 'FL');
INSERT INTO ZipCodes VALUES (60634, 'Dunning', 'Chicago', 'IL');
INSERT INTO ZipCodes VALUES (46741, 'Leo-Cedarville', 'Allen', 'IN');
INSERT INTO ZipCodes VALUES (44870, 'Erie', 'Sandusky', 'OH');
INSERT INTO ZipCodes VALUES (03038, 'Rockingham', 'Derry', 'NH');
INSERT INTO ZipCodes VALUES (18444, 'Lackawanna', 'Moscow', 'PA');
INSERT INTO ZipCodes VALUES (95684, 'El Dorado', 'Somerset', 'CA');
INSERT INTO ZipCodes VALUES (95076, 'Watsonville', 'Watsonville', 'CA');

-- Adding offices 
INSERT INTO Offices VALUES (1, 33956, 103);
INSERT INTO Offices VALUES (2, 10005, 30);
INSERT INTO Offices VALUES (3, 30331, 90);
INSERT INTO Offices VALUES (4, 46741, 150);
INSERT INTO Offices VALUES (5, 95684, 200);
INSERT INTO Offices VALUES (6, 03038, 70);
INSERT INTO Offices VALUES (7, 18444, 110);


-- Adding information about each office coverage
INSERT INTO Covering VALUES (33956, 1);
INSERT INTO Covering VALUES (10005, 2);
INSERT INTO Covering VALUES (30331, 3);
INSERT INTO Covering VALUES (46741, 4);
INSERT INTO Covering VALUES (94103, 1);
INSERT INTO Covering VALUES (60634, 4);
INSERT INTO Covering VALUES (33756, 3);
INSERT INTO Covering VALUES (44870, 5);
INSERT INTO Covering VALUES (03038, 6);
INSERT INTO Covering VALUES (18444, 7);
INSERT INTO Covering VALUES (95684, 5);
INSERT INTO Covering VALUES (95076, 5);

-- Adding Agents
INSERT INTO Agent VALUES (1, 'Kareem', 'Alsayed', 'Kareem@company.com',11199955533, 10000);
INSERT INTO Agent VALUES (2, 'Hatem', 'Zakir', 'Hatem@company.com'    ,99445883322, 9000);
INSERT INTO Agent VALUES (3, 'Verina', 'Helmy', 'Verina@company.com'  ,33884455699, 9000);
INSERT INTO Agent VALUES (4, 'Mohamed', 'Hani', 'Mohamed@company.com' ,12299330044, 12000);
INSERT INTO Agent VALUES (5, 'Loius', 'Litt', 'Loius@company.com'     ,34959994444, 3999);
INSERT INTO Agent VALUES (6, 'Harvey', 'Spectre', 'Harvey@company.com',30994499430, 4000);
INSERT INTO Agent VALUES (7, 'Jessica', 'Pearson', 'Jessica@company.com',39493905003, 8000);
INSERT INTO Agent VALUES (8, 'Mike', 'Ross', 'Mike@company.com',349950043494, 9500);
INSERT INTO Agent VALUES (9, 'Jack', 'Kande', 'Jack@company.com',34305948230, 10000);
INSERT INTO Agent VALUES (10, 'Alex', 'Nynge', 'Alex@company.com',53285030194, 11000);
INSERT INTO Agent VALUES (11, 'Aspona', 'Mike', 'Aspona@company.com',349950043494, 15000);
INSERT INTO Agent VALUES (12, 'Emily', 'Ross', 'Emily@company.com',48392040504, 10050);

-- Adding Agents workpalces
INSERT INTO WorkingFor VALUES (1,2);
INSERT INTO WorkingFor VALUES (1, 4);
INSERT INTO WorkingFor VALUES (2, 1);
INSERT INTO WorkingFor VALUES (3, 1);
INSERT INTO WorkingFor VALUES (3, 2);
INSERT INTO WorkingFor VALUES (4, 4);
INSERT INTO WorkingFor VALUES (5, 3);
INSERT INTO WorkingFor VALUES (5, 4);
INSERT INTO WorkingFor VALUES (5, 1);
INSERT INTO WorkingFor VALUES (6, 2);
INSERT INTO WorkingFor VALUES (7, 4);
INSERT INTO WorkingFor VALUES (8, 3);
INSERT INTO WorkingFor VALUES (8, 7);
INSERT INTO WorkingFor VALUES (9, 6);
INSERT INTO WorkingFor VALUES (9, 5);
INSERT INTO WorkingFor VALUES (10, 6);
INSERT INTO WorkingFor VALUES (11, 5);
INSERT INTO WorkingFor VALUES (11, 3);

-- Adding sellers and houses
INSERT INTO Seller VALUES (1, 'Eva', 'Mike', 'Eva@seller.com',4950430230);
INSERT INTO Houses VALUES (1, 1, 150000, 4,2,2,10005,'2019-11-01',3,2, "POSTED");

INSERT INTO Seller VALUES (2, 'Lance', 'Bob', 'Lance@seller.com',23490295283);
INSERT INTO Houses VALUES (2, 2, 2500000, 6,3,1,44870,'2019-4-01',9,5, "POSTED");

INSERT INTO Seller VALUES (3, 'Amy', 'Ford', 'Eva@seller.com',2348430590);
INSERT INTO Houses VALUES (3, 3, 500000, 10,5,4,60634,'2019-12-01',7,4, "POSTED");

INSERT INTO Seller VALUES (4, 'Mark', 'Nandoli', 'Mark@seller.com',23853489743);
INSERT INTO Houses VALUES (4, 4, 90000, 1,1,1,95076,'2018-12-01',9,5, "POSTED");

INSERT INTO Seller VALUES (5, 'Emma', 'Mark', 'Emma@seller.com',34589348934);
INSERT INTO Houses VALUES (5, 5, 1050000, 9,5,3,60634,'2018-11-01',4,4, "POSTED");

INSERT INTO Seller VALUES (6, 'Leon', 'Hanks', 'Leon@seller.com',438590348590);
INSERT INTO Houses VALUES (6, 6, 900000, 6,3,3,33756,'2019-10-10',5,3, "POSTED");

INSERT INTO Seller VALUES (7, 'Asmaa', 'John', 'Asmaa@seller.com',349548857348);
INSERT INTO Houses VALUES (7, 7, 350000, 5,2,1,95684,'2019-12-09',11,5, "POSTED");

INSERT INTO Seller VALUES (8, 'Jonny', 'Ben', 'Jonny@seller.com',238835849375);
INSERT INTO Houses VALUES (8, 8, 380000, 1,1,1,10005,'2019-08-17',1,2, "POSTED");

INSERT INTO Seller VALUES (9, 'Ben', 'Leon', 'Ben@seller.com',9093485903943);
INSERT INTO Houses VALUES (9, 9, 450000, 2,2,1,03038,'2020-01-09', 10, 6, "POSTED");

INSERT INTO Seller VALUES (10, 'Ahmed', 'Leon', 'Ahmed12@seller.com',2390239403);
INSERT INTO Houses VALUES (10, 10, 900000, 4,1,3,03038,'2020-01-01', 10, 6, "POSTED");

INSERT INTO Houses VALUES (11, 9, 1500000, 8,4,3,33756,'2020-01-09', 5, 3, "POSTED");

INSERT INTO Seller VALUES (11, 'Jack', 'Allison', 'Jack2@seller.com',4234902349);
INSERT INTO Houses VALUES (12, 11, 234295, 2,2,1,60634,'2019-05-09', 4, 4, "POSTED");



-- Transactions:
BEGIN TRANSACTION;

INSERT INTO Buyer VALUES (1, "Albion", "Albin", "Albion@buyer.com", 942034259823);
INSERT INTO Sales VALUES (1, 7, 1, '2020-02-04', 370000,11 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=1) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=1) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=1) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=1) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=1) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=1) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 1;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=1);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=1)
WHERE RowNumber = 1;

COMMIT;

-- 

BEGIN TRANSACTION;

INSERT INTO Buyer VALUES (2, "Hani", "Ahmed", "Hani@buyer.com", 2349034504);
INSERT INTO Sales VALUES (2, 3, 2, '2020-02-23', 510000,1 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=2) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=2) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=2) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=2) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=2) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=2) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 2;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=2);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=2)
WHERE RowNumber = 1;

COMMIT;

-- 

BEGIN TRANSACTION;

INSERT INTO Sales VALUES (3, 4, 2, '2020-01-24', 90000,9 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=3) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=3) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=3) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=3) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=3) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=3) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 3;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=3);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=3)
WHERE RowNumber = 1;
COMMIT;

-- 

BEGIN TRANSACTION;

INSERT INTO Buyer VALUES (3, "Teddy", "Moon", "Honey@buyer.com", 238923984);
INSERT INTO Sales VALUES (4, 9, 3, '2020-02-08', 400000,9 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=4) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=4) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=4) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=4) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=4) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=4) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 4;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=4);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=4)
WHERE RowNumber = 1;
COMMIT;

-- 

BEGIN TRANSACTION;

INSERT INTO Buyer VALUES (4, "Litt", "Google", "Litt2@buyer.com", 345305903);
INSERT INTO Sales VALUES (5, 10, 4, '2020-02-23', 900000,9 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=5) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=5) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=5) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=5) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=5) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=5) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 5;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=5);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=5)
WHERE RowNumber = 1;
COMMIT;

-- 

BEGIN TRANSACTION;

INSERT INTO Sales VALUES (6, 1, 4, '2020-02-29', 150000,3 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=6) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=6) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=6) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=6) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=6) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=6) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 6;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=6);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=6)
WHERE RowNumber = 1;
COMMIT;

-- 

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (7, 12, 3, '2020-02-15', 234295,4 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=7) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=7) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=7) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=7) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=7) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=7) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 7;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=7);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=7)
WHERE RowNumber = 1;
COMMIT;

-- 


BEGIN TRANSACTION;
INSERT INTO Sales VALUES (8, 5, 1, '2020-02-08', 234295,4 );

INSERT INTO AgentCommission (TransactionID, SellingAgent, Commission)
SELECT TransactionID, SellingAgent,
CASE
    WHEN FinalPrice < 100000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=8) * 0.1
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=8) * 0.07
    WHEN FinalPrice >= 100000 AND FinalPrice < 200000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=8) * 0.07
    WHEN FinalPrice >= 200000 AND FinalPrice < 500000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=8) * 0.06
    WHEN FinalPrice >= 500000 AND FinalPrice < 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=8) * 0.05
    WHEN FinalPrice >= 1000000 THEN  (SELECT FinalPrice FROM Sales Where TransactionID=8) * 0.04
    ELSE 0 
END 
FROM Sales
WHERE TransactionID = 8;

UPDATE Houses
SET Status = "SOLD"
WHERE ID = (SELECT HouseID FROM Sales Where TransactionID=8);

UPDATE Summary
SET NumberSold = NumberSold + 1, SalesTotal = SalesTotal + (SELECT FinalPrice FROM Sales Where TransactionID=8)
WHERE RowNumber = 1;
COMMIT;

-- PRINTING THE DATA INSERTED
SELECT "PRINTING ZIPCODES TABLE";
SELECT "---------------------------------";
SELECT * FROM ZipCodes;

SELECT "PRINTING OFFICES TABLE";
SELECT "---------------------------------";
SELECT * FROM Offices;

SELECT "PRINTING OFFICES COVERING FOR TABLE";
SELECT "---------------------------------";
SELECT * FROM Covering;

SELECT "PRINTING AGENTS TABLE";
SELECT "---------------------------------";
SELECT * FROM Agent;

SELECT "PRINTING AGENTS WORKING FOR TABLE";
SELECT "---------------------------------";
SELECT * FROM WorkingFor;

SELECT "PRINTING SELLERS TABLE";
SELECT "---------------------------------";
SELECT * FROM Seller;

SELECT "PRINTING HOUSES TABLE";
SELECT "---------------------------------";
SELECT * FROM Houses;

SELECT "PRINTING BUYERS TABLE";
SELECT "---------------------------------";
SELECT * FROM Buyer;

SELECT "PRINTING SALES TABLE";
SELECT "---------------------------------";
SELECT * FROM Sales;


SELECT "PRINTING EACH TRANSCATION COMMMISSION TABLE";
SELECT "--------------------------------------------";
SELECT * FROM AgentCommission;

SELECT "PRINTING SUMMARY TABLE";
SELECT "---------------------------------";
SELECT * FROM Summary;