/********************************Assignment Question No : 10 I********************************/

--Creating Table 'AnalysisJobID'

CREATE TABLE [AssignmentSchema].[AnalysisJobID](
	[ID] [INT] IDENTITY(1,1),
	[ProjectID] [INT],
	[AnalysisJobID] [INT],
	[AnalysisStatus] [INT],
	[CreatedOn] [DATE]
)
GO

--Inserting Data to 'AnalysisJobID' Table

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (1
           ,14
           ,1
           ,'12/28/2015')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (1
           ,13
           ,1
           ,'12/29/2015')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (1
           ,12
           ,2
           ,'12/30/2015')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (1
           ,11
           ,2
           ,'12/31/2015')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (1
           ,10
           ,6
           ,'1/1/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (2
           ,9
           ,1
           ,'1/30/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (2
           ,8
           ,1
           ,'1/31/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (2
           ,7
           ,6
           ,'2/1/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (2
           ,6
           ,1
           ,'2/2/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (3
           ,5
           ,1
           ,'2/28/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (3
           ,4
           ,6
           ,'2/29/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (3
           ,3
           ,1
           ,'3/1/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (3
           ,2
           ,1
           ,'3/2/2016')
GO

INSERT INTO [AssignmentSchema].[AnalysisJobID]
           ([ProjectID]
           ,[AnalysisJobID]
           ,[AnalysisStatus]
           ,[CreatedOn])
     VALUES
           (3
           ,1
           ,1
           ,'3/3/2016')
GO

SELECT [ProjectID]
      ,[AnalysisJobID]
  FROM [AssignmentSchema].[AnalysisJobID] 
  WHERE [AnalysisStatus]=6 ORDER BY [ProjectID]
GO
