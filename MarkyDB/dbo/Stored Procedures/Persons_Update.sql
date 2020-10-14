-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Persons_Update 
	-- Add the parameters for the stored procedure here
	@person_ID int,
	@FirstName varchar(50) = NULL,
	@LastName varchar(50) = NULL,
	@Phone varchar(10) = NULL,
	@Email varchar(50) = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS(SELECT * FROM Persons where Phone = @Phone and person_ID <> @person_ID)
	BEGIN
		UPDATE Persons
		SET FirstName = @FirstName, LastName = @LastName, Phone = @Phone, Email = @Email
		WHERE person_ID = @person_ID
	END
END
