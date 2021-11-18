USE [CustomerLib_Kazakevich] 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Customer_Create
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@PhoneNumber NVARCHAR(16),
	@Email NVARCHAR(50),
	@Notes NVARCHAR(MAX),
	@TotalPurchasesAmount MONEY
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
	VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Notes, @TotalPurchasesAmount)
END
GO
