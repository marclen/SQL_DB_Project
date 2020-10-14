-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--EXEC Persons_Insert @FirstName = 'Ganon', @LastName = 'Dorf', @Phone = '1234567890', @Email = 'kingOfDarkness@Hyrule.jp'
--SELECT * FROM Persons
CREATE PROCEDURE Persons_Insert
	-- Add the parameters for the stored procedure here
	@FirstName varchar(50),
	@LastName varchar(50),
	@Phone varchar(10),
	@Email varchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT * FROM Persons where Phone = @Phone)
	BEGIN
		INSERT INTO Persons(FirstName, LastName, Phone, Email)
		VALUES(@FirstName,@LastName,@Phone,@Email)
	END

END
