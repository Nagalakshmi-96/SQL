/********************************Assignment Question No : 20 I********************************/

--Creating Table '[SelectLock]'

CREATE TABLE [AssignmentSchema].[SelectLock]( 
	[ID] [INT] IDENTITY(1,1),
	[AnalysisJobID] [INT],
	[AnalysisJobName] [VARCHAR](40),
	[Status] [BIT] DEFAULT 0
)
GO


INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (1
           ,'Name1'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (2
           ,'Name2'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (3
           ,'Name3'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (4
           ,'Name4'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (5
           ,'Name5'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (6
           ,'Name6'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (7
           ,'Name7'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (8
           ,'Name8'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (9
           ,'Name9'
           )
GO

INSERT INTO [AssignmentSchema].[SelectLock]
           ([AnalysisJobID]
           ,[AnalysisJobName]
           )
     VALUES
           (10
           ,'Name10'
           )
GO


BEGIN TRAN 
		WAITFOR DELAY '00:00:05'
		UPDATE [AssignmentSchema].[SelectLock] WITH (ROWLOCK) SET Status=1 WHERE Id IN (SELECT TOP(5) Id FROM [AssignmentSchema].[SelectLock] );
		WAITFOR DELAY '00:00:10'
COMMIT TRAN

UPDATE [AssignmentSchema].[SelectLock] SET Status=0 Where Status =1 


BEGIN TRAN 
		WAITFOR DELAY '00:00:05'
		UPDATE [AssignmentSchema].[SelectLock] SET Status=1 WHERE Id IN (SELECT TOP(5) Id FROM [AssignmentSchema].[SelectLock] );
COMMIT TRAN

UPDATE [AssignmentSchema].[SelectLock] SET Status=0 Where Status =1 

SELECT TOP(5) * FROM [AssignmentSchema].[SelectLock] WHERE Status=0