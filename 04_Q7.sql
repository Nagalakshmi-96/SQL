/********************************Assignment Question No : 7 I********************************/

--Creating Table '[ClientTable]'

CREATE TABLE [AssignmentSchema].[ClientTable]( 
	[ClientID] [INT],
	[Name] [VARCHAR](100),
)
GO

--Creating Table '[ClientTableUpdated]'

CREATE TABLE [AssignmentSchema].[ClientTableUpdated]( 
	[ClientID] [INT],
	[Name] [VARCHAR](100),
	[ProjectID] [INT],
)
GO

--Inserting into [ClientTable]

INSERT INTO [AssignmentSchema].[ClientTable]
           ([ClientID]
           ,[Name])
     VALUES
           (1
           ,'Client 1'
		   )
GO

INSERT INTO [AssignmentSchema].[ClientTable]
           ([ClientID]
           ,[Name])
     VALUES
           (2
           ,'Client Renamed 2'
		   )
GO

INSERT INTO [AssignmentSchema].[ClientTable]
           ([ClientID]
           ,[Name])
     VALUES
           (3
           ,'Client Renamed 3'
		   )
GO

INSERT INTO [AssignmentSchema].[ClientTable]
           ([ClientID]
           ,[Name])
     VALUES
           (4
           ,'Client 4'
		   )
GO

--Inserting into [ClientTableUpdated]

INSERT INTO [AssignmentSchema].[ClientTableUpdated]
           ([ClientID]
           ,[Name]
           ,[ProjectID])
     VALUES
           (1
           ,'Client 1'
           ,123)
GO

INSERT INTO [AssignmentSchema].[ClientTableUpdated]
           ([ClientID]
           ,[Name]
           ,[ProjectID])
     VALUES
           (2
           ,'Client 2'
           ,124)
GO

INSERT INTO [AssignmentSchema].[ClientTableUpdated]
           ([ClientID]
           ,[Name]
           ,[ProjectID])
     VALUES
           (3
           ,'Client 3'
           ,125)
GO

INSERT INTO [AssignmentSchema].[ClientTableUpdated]
           ([ClientID]
           ,[Name]
           ,[ProjectID])
     VALUES
           (4
           ,'Client 4'
           ,126)
GO

INSERT INTO [AssignmentSchema].[ClientTableUpdated]
           ([ClientID]
           ,[Name]
           ,[ProjectID])
     VALUES
           (5
           ,'Client 5'
           ,127)
GO

INSERT INTO [AssignmentSchema].[ClientTableUpdated]
           ([ClientID]
           ,[Name]
           ,[ProjectID])
     VALUES
           (6
           ,'Client 6'
           ,128)
GO

--Updating the Values from Table 1 to Table 2

UPDATE
	   [AssignmentSchema].[ClientTableUpdated]
	SET
		 [Name] =T1.[Name]
	FROM
		[AssignmentSchema].[ClientTable] T1
	INNER JOIN
		[AssignmentSchema].[ClientTableUpdated] T2
	ON 
		T1.[ClientID]=T2.[ClientID]

SELECT * FROM [AssignmentSchema].[ClientTable]
SELECT * FROM [AssignmentSchema].[ClientTableUpdated]
