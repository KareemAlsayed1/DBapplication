.mode column
.headers on
PRAGMA foreign_keys = ON; 

-- Creatig tables 

-- Holds information about the areas with zip code
CREATE TABLE ZipCodes ( 
    Zip INTEGER PRIMARY KEY, 
    Neighborhood VARCHAR(100), 
    City VARCHAR(100), 
    State VARCHAR(100)
);

-- Holds information about the offices 
CREATE TABLE Offices (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	ZipCode INTEGER, -- This is the office location
	EmployeesNumber INTEGER,
    FOREIGN KEY (ZipCode) REFERENCES ZipCodes(Zip) 
);

-- Holds information about areas covered by office
CREATE TABLE Covering (
	ZipCode INTEGER type UNIQUE, -- The covered location
	OfficeID INTEGER,
    FOREIGN KEY (ZipCode) REFERENCES ZipCodes(Zip),
    FOREIGN KEY (OfficeID) REFERENCES Offices(ID)  
);

-- Holds information about the agents working in the company
CREATE TABLE Agent (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	FirstName TEXT,
	LastName TEXT,
	Email TEXT,
	Phone INTEGER,
	Salary INTEGER
);

-- Holds information about where the agents are working 
CREATE TABLE WorkingFor (
	AgentID INTEGER,
	OfficeID INTEGER,
    FOREIGN KEY (AgentID) REFERENCES Agent(ID),
    FOREIGN KEY (OfficeID) REFERENCES Offices(ID)  
);

-- Holds information about sellers
CREATE TABLE Seller (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	FIrstName TEXT,
	LastName TEXT,
	Email TEXT,
	Phone INTEGER
);

-- Holds information about houses
CREATE TABLE Houses (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	SellerID INTEGER,
	ListingPrice INTEGER,
	Bedrooms INTEGER,
	Bathrooms INTEGER,
	Floors INTEGER,
	ZipCode INTEGER,
	DateListing DATE,
	ListingAgent INTEGER,
	Office INTEGER,
	Status VARCHAR(6),
    FOREIGN KEY (SellerID) REFERENCES Seller(ID),
    FOREIGN KEY (ListingAgent) REFERENCES Agent(ID),
    FOREIGN KEY (ZipCode) REFERENCES ZipCodes(Zip), 
    FOREIGN KEY (Office) REFERENCES Offices(ID) 
);

-- Holds the information about the buyers
CREATE TABLE Buyer (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	FirstName TEXT,
	LastName TEXT,
	Email TEXT,
	Phone TEXT
);

-- Holds information about each sold home
CREATE TABLE Sales (
	TransactionID INTEGER PRIMARY KEY AUTOINCREMENT,
	HouseID INTEGER type UNIQUE,
	BuyerID INTEGER,
	SoldDate DATE,
	FinalPrice INTEGER,
    SellingAgent INTEGER,    
    FOREIGN KEY (SellingAgent) REFERENCES Agent(ID),
    FOREIGN KEY (HouseID) REFERENCES Houses(ID),
    FOREIGN KEY (BuyerID) REFERENCES Buyer(ID)
    );

-- Calculates the comission for each transaction and links the agent ID
CREATE TABLE AgentCommission (
	TransactionID INTEGER type UNIQUE,
	SellingAgent INTEGER,
	Commission INTEGER,
    FOREIGN KEY (SellingAgent) REFERENCES Agent(ID),
    FOREIGN KEY (TransactionID) REFERENCES Sales(TransactionID)
);

-- Holds summary information about selling
CREATE TABLE Summary (
    RowNumber PRIMARY KEY,
    NumberSold INTEGER,
    SalesTotal INTEGER
);

-- Calculates the total commission for each agent
CREATE TABLE CommissionSummary (
    AgentID INTEGER type UNIQUE,
    TotalComission INTEGER
);

-- Index table for the date (It is important since all the queries are within one month)
CREATE INDEX Idx1_sellingMonth ON Sales(SoldDate); 

-- Connecting the Selling date then Selling Agents in index table
CREATE INDEX Idx2_sellingMonth_withAgents ON Sales(SoldDate, SellingAgent); 

-- Connecting Selling date with the House ID to know the houses sold in specific month
CREATE INDEX Idx3_sellingMonth_with ON Sales(SoldDate, HouseID); 