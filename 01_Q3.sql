/********************************Assignment Question No : 3********************************/

--Creating Table 'PartnerReferenceDetails'

CREATE TABLE [AssignmentSchema].[PartnerReferenceDetails](
	[ProjectID] [INT] NOT NULL,
	[ProjectPartnerDataReferenceID] [varchar](100) NOT NULL,
)
GO

--Creating Table 'PartnerDetails'

CREATE TABLE [AssignmentSchema].[PartnerDetails](
	[ProjectID] [INT] NOT NULL,
	[ProjectPartnerDataReferenceID] [varchar](100) NOT NULL,
	[BeginningCapital] [INT] DEFAULT NULL,
	[CapitalContributions] [INT] DEFAULT NULL,
	[PreIncentiveBookIncome] [INT] DEFAULT NULL
)
GO

--Inserting Values into 'PartnerReferenceDetails'

INSERT INTO [AssignmentSchema].[PartnerReferenceDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID])
     VALUES
           (1
           ,'BFB1B790-9EC7-E611-811A-000C2979F43C')
GO

INSERT INTO [AssignmentSchema].[PartnerReferenceDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID])
     VALUES
           (1
           ,'090EB356-E1E7-E611-811B-000C2979F43C')
GO

INSERT INTO [AssignmentSchema].[PartnerReferenceDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID])
     VALUES
           (1
           ,'0F3E2796-4096-E611-8118-000C2979F43C')
GO

INSERT INTO [AssignmentSchema].[PartnerReferenceDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID])
     VALUES
           (1
           ,'7F55BD56-E1E7-E611-811B-000C2979F43C')
GO

INSERT INTO [AssignmentSchema].[PartnerReferenceDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID])
     VALUES
           (1
           ,'D04F2796-4096-E611-8118-000C2979F43C')
GO

INSERT INTO [AssignmentSchema].[PartnerReferenceDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID])
     VALUES
           (1
           ,'94FFB4E5-6D81-E611-8114-000C2979F43C')
GO

--Inserting Values into 'PartnerDetails'

INSERT INTO [AssignmentSchema].[PartnerDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[BeginningCapital]
           ,[CapitalContributions]
           ,[PreIncentiveBookIncome])
     VALUES
           (1
           ,'BFB1B790-9EC7-E611-811A-000C2979F43C'
           ,1000
           ,3000
           ,NULL)
GO

INSERT INTO [AssignmentSchema].[PartnerDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[BeginningCapital]
           ,[CapitalContributions]
           ,[PreIncentiveBookIncome])
     VALUES
           (1
           ,'090EB356-E1E7-E611-811B-000C2979F43C'
           ,2000
           ,3000
           ,NULL)
GO

INSERT INTO [AssignmentSchema].[PartnerDetails]
           ([ProjectID]
           ,[ProjectPartnerDataReferenceID]
           ,[BeginningCapital]
           ,[CapitalContributions]
           ,[PreIncentiveBookIncome])
     VALUES
           (1
           ,'0F3E2796-4096-E611-8118-000C2979F43C'
           ,3000
           ,3000
           ,NULL)
GO

SELECT T1.ProjectID
	  ,T1.ProjectPartnerDataReferenceID
	  ,ISNULL(T2.BeginningCapital,0) BeginningCapital
	  ,ISNULL(T2.CapitalContributions,0) CapitalContributions
	  ,ISNULL(T2.PreIncentiveBookIncome,0) PreIncentiveBookIncome
	FROM [AssignmentSchema].[PartnerReferenceDetails] T1 LEFT JOIN [AssignmentSchema].[PartnerDetails] T2
	ON T1.ProjectPartnerDataReferenceID = T2.ProjectPartnerDataReferenceID
GO