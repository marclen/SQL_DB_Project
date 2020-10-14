-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--EXEC Persons_Get @LastName = 'c*'
CREATE PROCEDURE [dbo].[Persons_Get]
	-- Add the parameters for the stored procedure here
	@person_ID int = NULL,
	@FirstName varchar(50) = NULL,
	@LastName varchar(50) = NULL,
	@Phone varchar(10) = NULL,
	@Email varchar(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	SELECT @FirstName = REPLACE(@FirstName, '*', '%')
	SELECT @LastName = REPLACE(@LastName, '*', '%')


SELECT [person_ID],[FirstName],[LastName],[Phone],[Email] FROM [dbo].[Persons]

  WHERE
	(@person_ID IS NULL or person_ID = @person_ID)

	and

	(@FirstName IS NULL or FirstName like @FirstName)

	and

	(@LastName IS NULL or LastName like @LastName)

	and

	(@Phone is null or Phone like @Phone)
	
	and
	
	(@Email is null or Email like @Email)

END
