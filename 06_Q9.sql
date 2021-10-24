/********************************Assignment Question No : 9 I********************************/

--Creating Table 'AnalysisStatus'

CREATE TABLE [AssignmentSchema].[AnalysisStatus](
	[ID] [INT] IDENTITY(1,1),
	[ProjectID] [INT],
	[AnalysisJobID] [INT],
	[Status] [INT],
	[CreatedOn] [DATE]
)
GO

--Inserting Data to 'AnalysisStatus' Table

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,1
           ,1
           ,'01/01/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,1
           ,2
           ,'01/02/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,1
           ,3
           ,'01/03/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,1
           ,4
           ,'01/04/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,2
           ,2
           ,'02/02/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,2
           ,3
           ,'02/03/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,2
           ,4
           ,'02/04/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,2
           ,5
           ,'02/05/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (1
           ,2
           ,6
           ,'02/06/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (2
           ,3
           ,2
           ,'03/03/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (2
           ,3
           ,3
           ,'03/04/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (2
           ,3
           ,4
           ,'03/05/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (2
           ,3
           ,5
           ,'03/06/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisStatus]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[Status]
           ,[CreatedOn])
     VALUES
           (2
           ,3
           ,6
           ,'03/07/2016')
GO

SELECT *
   FROM  [AssignmentSchema].[AnalysisStatus] T1
   WHERE T1.CreatedOn =(SELECT MAX(T2.CreatedOn) from [AssignmentSchema].[AnalysisStatus] T2 GROUP BY T2.AnalysisJobID HAVING T2.AnalysisJobID=T1.AnalysisJobID) ORDER BY [ID]
GO
