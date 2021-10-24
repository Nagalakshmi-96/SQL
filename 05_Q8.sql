/********************************Assignment Question No : 8********************************/

--Creating Table 'PartnerLatestDetails'

CREATE TABLE [AssignmentSchema].[PartnerLatestDetails](
	[ProjectID] [INT],
	[ProjectPartnerDataReferenceID] [VARCHAR](100) NOT NULL,
	[EndingCapital] [INT],
	[CreatedOn] [DATETIME2] DEFAULT getDate(),
	[IsDeleted] [BIT] DEFAULT 0
)
GO

--Inserting Data to 'PartnerLatestDetails' Table

INSERT INTO [AssignmentSchema].[PartnerLatestDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[EndingCapital]
		   )
     VALUES
           (1234
           ,'6333C447-9481-E611-8114-000C2979F43C'
           ,100
		   )
GO

INSERT INTO [AssignmentSchema].[PartnerLatestDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[EndingCapital]
		   )
     VALUES
           (1234
           ,'6333C447-9481-E611-8114-000C2979F43C'
           ,100
		   )
GO

INSERT INTO [AssignmentSchema].[PartnerLatestDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[EndingCapital]
		   )
     VALUES
           (1235
           ,'0CD7864D-8881-E611-8114-000C2979F43C'
           ,400
		   )
GO

INSERT INTO [AssignmentSchema].[PartnerLatestDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[EndingCapital]
		   )
     VALUES
           (1235
           ,'0CD7864D-8881-E611-8114-000C2979F43C'
           ,400
		   )
GO

INSERT INTO [AssignmentSchema].[PartnerLatestDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[EndingCapital]
		   )
     VALUES
           (1235
           ,'0CD7864D-8881-E611-8114-000C2979F43C'
           ,400
		   )
GO


INSERT INTO [AssignmentSchema].[PartnerLatestDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[EndingCapital]
		   )
     VALUES
           (1236
           ,'62566140-9C81-E611-8114-000C2979F43C'
           ,0
		   )
GO

INSERT INTO [AssignmentSchema].[PartnerLatestDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[EndingCapital]
		   )
     VALUES
           (1236
           ,'62566140-9C81-E611-8114-000C2979F43C'
           ,0
		   )
GO

UPDATE [AssignmentSchema].[PartnerLatestDetails]
   SET [IsDeleted] = 1
   FROM  [AssignmentSchema].[PartnerLatestDetails] T1
 WHERE NOT T1.CreatedOn =(SELECT MAX(T2.CreatedOn) from [AssignmentSchema].[PartnerLatestDetails] T2 GROUP BY T2.ProjectID HAVING T2.ProjectID=T1.ProjectID)
GO

SELECT *
  FROM [AssignmentSchema].[PartnerLatestDetails]
GO
