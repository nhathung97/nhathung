--SP tinh tong
IF OBJECT_ID('uspSum','P') IS NOT NULL
	DROP PROC uspSUM 
GO 

CREATE PROC uspSum
	@a float,
	@b float,
	@tong float out
AS
	set @tong = @a+@b
GO

DECLARE @TONG float
EXEC uspSum 2.3,3.5, @TONG OUT
PRINT @TONG