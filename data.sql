USE [CustomerLib_Kazakevich] 
GO

INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
VALUES
/*correct Customer values*/
('Anton', 'Kazkevich', '+79232223344', '1yoga@mail.ru', 'Some Notes', 1000),
('Ivan', 'Ivanov', '89237776622', 'ivan@gmail.com', 'Some Notes', 1),
(NULL, 'Petrov', NULL, NULL, 'Some Notes', NULL)
GO

INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
VALUES
/*not correct Customer values PhoneNUmber*/
('Anton', 'Kazkevich', '+r79232223344', '@mail.ru', 'Some Notes', 1000)
GO

INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
VALUES
/*not correct Customer values Email*/
('Ivan', 'Ivanov', '89237776622', '@gmail.com', 'Some Notes', 1)
GO

INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
VALUES
/*not insert Customer values Notes*/
(NULL, 'Petrov', NULL, NULL, 'Some Notes', NULL)
GO

INSERT INTO Addresses(CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country)
VALUES
/*correct Addresses values*/
(1, 'Some Address', 'Some Address 2', 'Shipping', 'Chicago', '630083', 'Illinois', 'United States')
(2, 'Some Address', 'Some Address 2', 'Billing', 'Toronto', '988876', 'Ontario', 'Canada'),
(3, 'Some Address', 'Some Address 2', 'Billing', 'Los-Angeles', '630083', 'California', 'United States')
GO

INSERT INTO Addresses(CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country)
VALUES
/*not correct Addresses values AddressType*/
(1, 'Some Address', 'Some Address 2', 'Ship', 'Chicago', '630083', 'Illinois', 'United States')
GO

INSERT INTO Addresses(CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country)
VALUES
/*not correct Addresses values Country*/
(2, 'Some Address', NULL, 'Billing', 'Novosibirsk', '988876', 'Novosibirskaya Obl', 'Russia')
GO

INSERT INTO Addresses(CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country)
VALUES
/*not insert Addresses values AddressLine*/
(3, NULL, 'Some Address 2', 'Billing', 'Los-Angeles', '630083', 'California', 'United States')
GO
