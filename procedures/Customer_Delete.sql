USE [CustomerLib_Kazakevich] 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Customer_Delete
	@CustomerId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Customers
	WHERE CustomerId = @CustomerId
END
GO