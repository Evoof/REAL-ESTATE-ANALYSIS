CREATE DATABASE realestatedb;
use realestatedb;

CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    Phone BIGINT,
    Email VARCHAR(100),
    Gender VARCHAR(10),
    DateRegistered DATE
);

CREATE TABLE Agents (
    AgentID VARCHAR(10) PRIMARY KEY,
    AgentName VARCHAR(100),
    AgencyName VARCHAR(100),
    AgentPhone BIGINT,
    AgentEmail VARCHAR(100),
    OfficeLocation VARCHAR(100)
);

CREATE TABLE Properties (
    PropertyID VARCHAR(10) PRIMARY KEY,
    PropertyTitle VARCHAR(100),
    PropertyType VARCHAR(50),
    Category VARCHAR(50),
    Price INT,
    Size INT,
    Bedrooms INT,
    Bathrooms INT,
    PropertyCity VARCHAR(100),
    PropertyState VARCHAR(100),
    Latitude FLOAT,
    Longitude FLOAT,
    ListedDate DATE,
    PropertyStatus VARCHAR(20)
);

CREATE TABLE Transaction (
    TransactionID VARCHAR(10) PRIMARY KEY,
    TransactionDate DATE,
    AmountPaid DECIMAL(15, 2),
    PaymentMode VARCHAR(225),
    Remarks VARCHAR(255),
    CustomerID VARCHAR(10),
    AgentID VARCHAR(10),
    PropertyID VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID),
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID)
);


