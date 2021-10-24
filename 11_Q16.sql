/********************************Assignment Question No : 16 ********************************/

--Creating Table '[ClientDetails]'

CREATE TABLE [AssignmentSchema].[ClientDetails]( 
	[ClientID] [INT] ,
	[EngagementID] [INT],
)
GO

--Creating Table '[EngagementDetails]'

CREATE TABLE [AssignmentSchema].[EngagementDetails]( 
	[EngagementID] [INT] ,
	[EntityGroupID] [INT],
)
GO

--Creating Table '[EntityGroupDetails]'

CREATE TABLE [AssignmentSchema].[EntityGroupDetails]( 
	[EntityGroupID] [INT],
	[EntityID] [INT]
)
GO

--Creating Table '[EntityDetails]'

CREATE TABLE [AssignmentSchema].[EntityDetails]( 
	[EntityID] [INT],
	[ProjectID] [INT]
)
GO

--Inserting into [ClientDetails]

USE [SQLAssignments]
GO

INSERT INTO [AssignmentSchema].[ClientDetails]
           ([ClientID]
           ,[EngagementID])
     VALUES
           (1
           ,1
		   )
GO

INSERT INTO [AssignmentSchema].[ClientDetails]
           ([ClientID]
           ,[EngagementID])
     VALUES
           (1
           ,2
		   )
GO

INSERT INTO [AssignmentSchema].[ClientDetails]
           ([ClientID]
           ,[EngagementID])
     VALUES
           (2
           ,3
		   )
GO

INSERT INTO [AssignmentSchema].[ClientDetails]
           ([ClientID]
           ,[EngagementID])
     VALUES
           (3
           ,4
		   )
GO

--Inserting into [EngagementDetails]

INSERT INTO [AssignmentSchema].[EngagementDetails]
           ([EngagementID]
           ,[EntityGroupID])
     VALUES
           (1
           ,1
		   )
GO

INSERT INTO [AssignmentSchema].[EngagementDetails]
           ([EngagementID]
           ,[EntityGroupID])
     VALUES
           (1
           ,2
		   )
GO

INSERT INTO [AssignmentSchema].[EngagementDetails]
           ([EngagementID]
           ,[EntityGroupID])
     VALUES
           (2
           ,3
		   )
GO

INSERT INTO [AssignmentSchema].[EngagementDetails]
           ([EngagementID]
           ,[EntityGroupID])
     VALUES
           (3
           ,4
		   )
GO

INSERT INTO [AssignmentSchema].[EngagementDetails]
           ([EngagementID]
           ,[EntityGroupID])
     VALUES
           (4
           ,5
		   )
GO

--Inserting into [EntityGroupDetails]

INSERT INTO [AssignmentSchema].[EntityGroupDetails]
           ([EntityGroupID]
           ,[EntityID])
     VALUES
           (1
           ,1
		   )
GO

INSERT INTO [AssignmentSchema].[EntityGroupDetails]
           ([EntityGroupID]
           ,[EntityID])
     VALUES
           (1
           ,2
		   )
GO

INSERT INTO [AssignmentSchema].[EntityGroupDetails]
           ([EntityGroupID]
           ,[EntityID])
     VALUES
           (2
           ,3
		   )
GO

INSERT INTO [AssignmentSchema].[EntityGroupDetails]
           ([EntityGroupID]
           ,[EntityID])
     VALUES
           (3
           ,4
		   )
GO

INSERT INTO [AssignmentSchema].[EntityGroupDetails]
           ([EntityGroupID]
           ,[EntityID])
     VALUES
           (4
           ,5
		   )
GO

INSERT INTO [AssignmentSchema].[EntityGroupDetails]
           ([EntityGroupID]
           ,[EntityID])
     VALUES
           (5
           ,6
		   )
GO

--Inserting into [EntityDetails]

INSERT INTO [AssignmentSchema].[EntityDetails]
           ([EntityID]
           ,[ProjectID])
     VALUES
           (1
           ,1
		   )
GO

INSERT INTO [AssignmentSchema].[EntityDetails]
           ([EntityID]
           ,[ProjectID])
     VALUES
           (1
           ,2
		   )
GO

INSERT INTO [AssignmentSchema].[EntityDetails]
           ([EntityID]
           ,[ProjectID])
     VALUES
           (2
           ,3
		   )
GO

INSERT INTO [AssignmentSchema].[EntityDetails]
           ([EntityID]
           ,[ProjectID])
     VALUES
           (3
           ,4
		   )
GO

INSERT INTO [AssignmentSchema].[EntityDetails]
           ([EntityID]
           ,[ProjectID])
     VALUES
           (4
           ,5
		   )
GO

INSERT INTO [AssignmentSchema].[EntityDetails]
           ([EntityID]
           ,[ProjectID])
     VALUES
           (5
           ,6
		   )
GO

INSERT INTO [AssignmentSchema].[EntityDetails]
           ([EntityID]
           ,[ProjectID])
     VALUES
           (6
           ,7
		   )
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sathesh Rangasamy
-- Create date: 31/08/2018
-- Description:	Procedure to return Project ID based on the given Parameters
-- =============================================
CREATE PROCEDURE [AssignmentSchema].[USP_ReturnProjectID] 
	@Var1 INT,@Var2 INT,@Var3 INT,@Var4 INT
AS
BEGIN
	SET NOCOUNT ON;
    SELECT T4.ProjectId FROM [AssignmentSchema].[ClientDetails] T1
                                     INNER JOIN [AssignmentSchema].[EngagementDetails] T2 on T1.EngagementId=T2.EngagementId
                             INNER JOIN [AssignmentSchema].[EntityGroupDetails] T3 on T2.EntityGroupId=T3.EntityGroupId
                             INNER JOIN  [AssignmentSchema].[EntityDetails] T4 on T3.EntityId=T4.EntityId

							 WHERE 
								(T1.ClientID=@Var1 OR @Var1=0)
							AND (T2.EngagementID=@Var2 OR @Var2=0)
							AND (T3.EntityGroupId=@Var3 OR @Var3=0)
							AND (T4.EntityId=@Var4 OR @Var4=0)

END
GO

EXEC [AssignmentSchema].[USP_ReturnProjectID] 1,0,0,0
