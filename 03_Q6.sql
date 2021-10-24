/********************************Assignment Question No : 6 I********************************/

--Creating Table 'SamDetails1'

CREATE TABLE [AssignmentSchema].[SamDetails1]( 
	[UserID] [INT],
	[FirstName] [VARCHAR](100),
	[Email] [VARCHAR](50),
	[SamAccountName] [VARCHAR](50)
)
GO

--Creating Table 'SamDetailsUpdated'

CREATE TABLE [AssignmentSchema].[SamDetailsUpdated1]( 
	[UserID] [INT],
	[FirstName] [VARCHAR](100),
	[Email] [VARCHAR](50),
	[SamAccountName] [VARCHAR](50)
)
GO

--Inserting values to 'SamDetails1'

INSERT INTO [AssignmentSchema].[SamDetails1]
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

INSERT INTO [AssignmentSchema].[SamDetails1]
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

INSERT INTO [AssignmentSchema].[SamDetails1]
           ([UserID]
           ,[FirstName]
           ,[Email]
           ,[SamAccountName])
     VALUES
           (5200
           ,'Bill'
           ,'bill@vernal.is'
           ,'US\crybil')
GO

--Inserting values to 'SamDetailsUpdated1'

INSERT INTO [AssignmentSchema].[SamDetailsUpdated1]
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

INSERT INTO [AssignmentSchema].[SamDetailsUpdated1]
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

INSERT INTO [AssignmentSchema].[SamDetailsUpdated1]
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

INSERT INTO [AssignmentSchema].[SamDetailsUpdated1]
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

INSERT INTO [AssignmentSchema].[SamDetailsUpdated1]
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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sathesh Rangasamy
-- Create date: 29/08/2018
-- Description:	Insert or update the records from table 1 to table 2 under following condition.i) Insert if there are no records for a user from table 1 is present in table 2.ii)Update if the user from table 1 has record in table 2.
-- =============================================
CREATE PROCEDURE [AssignmentSchema].[USP_updateSamTable1]
AS
BEGIN
	SET NOCOUNT ON;

	--Delete Records from the [SamDetailsUpdated1] Table
	DELETE FROM [AssignmentSchema].[SamDetailsUpdated1]
	WHERE UserId NOT IN 
		(
			SELECT T2.UserId 
			FROM 
			[AssignmentSchema].[SamDetailsUpdated1] T1 INNER JOIN [AssignmentSchema].[SamDetails1] T2 ON T1.UserId = T2.UserId
		)	
		
	INSERT INTO [AssignmentSchema].[SamDetailsUpdated1]
			(
				 UserId
				,FirstName
				,Email
				,SamAccountName
			)
			SELECT 
				UserId,FirstName,Email,SamAccountName FROM [AssignmentSchema].[SamDetails1] T1
			WHERE UserId NOT IN 
						(
							SELECT T1.UserId 
							FROM [AssignmentSchema].[SamDetails1] T1 INNER JOIN [AssignmentSchema].[SamDetailsUpdated1] T2 ON T1.UserId = T2.UserId
						)			

	

END
GO

EXEC [AssignmentSchema].[USP_updateSamTable1]

SELECT * FROM  [AssignmentSchema].[SamDetailsUpdated1]
