USE [master]
GO

CREATE DATABASE [CustomerLib_Kazakevich]
GO

USE [CustomerLib_Kazakevich] 
GO

CREATE TABLE [Customers](
	CustomerId INT IDENTITY(1,1) NOT NULL CONSTRAINT [PK_CustomerId] PRIMARY KEY CLUSTERED,
	FirstName NVARCHAR(50) NULL,
	LastName NVARCHAR(50) NOT NULL,
	PhoneNumber NVARCHAR(16) NULL CONSTRAINT PhoneNumber_E164 CHECK (PhoneNumber LIKE '+[0-9]%[0-9]' OR PhoneNumber LIKE '[0-9]%[0-9]'),
	Email NVARCHAR(50) NULL, CONSTRAINT Email_Validate CHECK (Email LIKE '%_@__%.__%'),
	Notes NVARCHAR(MAX) NOT NULL,
	TotalPurchasesAmount MONEY NULL
)
GO

CREATE TABLE [Addresses](

	AddressID INT IDENTITY(1,1) NOT NULL CONSTRAINT [PK_AddressID] PRIMARY KEY CLUSTERED,
	CustomerID INT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerId),
	AddressLine NVARCHAR(100) NOT NULL,
	AddressLine2 NVARCHAR(100) NULL,
	AddressType NVARCHAR(8) NOT NULL CONSTRAINT AddressType_CHK CHECK (AddressType IN ('Shipping', 'Billing')),
	City NVARCHAR(50) NOT NULL,
	PostalCode NVARCHAR(6) NOT NULL,
	State NVARCHAR(20) NOT NULL,
	Country NVARCHAR(13) NOT NULL CONSTRAINT Country_CHK CHECK (Country IN ('United States', 'Canada'))
)
GO
