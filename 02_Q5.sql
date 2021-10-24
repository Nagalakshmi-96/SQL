/********************************Assignment Question No : 5 I********************************/

--Creating Table 'SamDetails'

CREATE TABLE [AssignmentSchema].[SamDetails]( 
	[UserID] [INT],
	[FirstName] [VARCHAR](100),
	[Email] [VARCHAR](50),
	[SamAccountName] [VARCHAR](50)
)
GO

--Creating Table 'SamDetailsUpdated'

CREATE TABLE [AssignmentSchema].[SamDetailsUpdated]( 
	[UserID] [INT],
	[FirstName] [VARCHAR](100),
	[Email] [VARCHAR](50),
	[SamAccountName] [VARCHAR](50)
)
GO

--Inserting values to 'SamDetails'

INSERT INTO [AssignmentSchema].[SamDetails]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5110
           ,'Olga'
           ,'olga@vernal.is'
           ,'US\tabacol')
GO

INSERT INTO [AssignmentSchema].[SamDetails]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5111
           ,'Tony'
           ,'rob@vernal.is'
           ,'US\seelaro')
GO

INSERT INTO [AssignmentSchema].[SamDetails]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5112
           ,'Scott'
           ,'scott.diehl@vernal.is'
           ,'US\diehlsc')
GO

INSERT INTO [AssignmentSchema].[SamDetails]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5113
           ,'Jared'
           ,'jared.zagelbaum@vernal.is'
           ,'US\zagelja')
GO

INSERT INTO [AssignmentSchema].[SamDetails]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5114
           ,'Ray'
           ,'ray.marguina@vernal.is'
           ,'US\margura')
GO


--Inserting values to 'SamDetailsUpdated'

INSERT INTO [AssignmentSchema].[SamDetailsUpdated]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5110
           ,'Olga-Old'
           ,'olga@vernal.is'
           ,'US\tabacol')
GO

INSERT INTO [AssignmentSchema].[SamDetailsUpdated]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5111
           ,'Tony'
           ,'rob@vernal.is'
           ,'US\seelaro')
GO

INSERT INTO [AssignmentSchema].[SamDetailsUpdated]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5112
           ,'Scott'
           ,'scott.diehl@vernal.is'
           ,'US\diehlsc')
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sathesh Rangasamy
-- Create date: 29/08/2018
-- Description:	Insert or update the records from table 1 to table 2 under following condition.i) Insert if there are no records for a user from table 1 is present in table 2.ii)Update if the user from table 1 has record in table 2.
-- =============================================
CREATE PROCEDURE [AssignmentSchema].[USP_updateSamTable]
AS
BEGIN
	SET NOCOUNT ON;

	--Inserting the Values into the 'SamDetailsUpdated' Table

	INSERT INTO [AssignmentSchema].[SamDetailsUpdated]
			(
				 UserId
				,FirstName
				,Email
				,SamAccountName
			)
			SELECT 
				UserId,FirstName,Email,SamAccountName FROM [AssignmentSchema].[SamDetails] T1
			WHERE UserId NOT IN 
						(
							SELECT T1.UserId 
							FROM [AssignmentSchema].[SamDetails] T1 INNER JOIN [AssignmentSchema].[SamDetailsUpdated] T2 ON T1.UserId = T2.UserId
						)

	--Update Sam Details based on the previous Table

	UPDATE
	   [AssignmentSchema].[SamDetailsUpdated]
	SET
		 [FirstName] =T1.[FirstName]
		,[Email] =T1.[Email]
		,[SamAccountName]=T1.[SamAccountName]
	FROM
		[AssignmentSchema].[SamDetails] T1
	INNER JOIN
		[AssignmentSchema].[SamDetailsUpdated] T2
	ON 
		T1.[UserID]=T2.[UserID]

END
GO


EXEC [AssignmentSchema].[USP_updateSamTable]

SELECT * FROM [AssignmentSchema].[SamDetailsUpdated]