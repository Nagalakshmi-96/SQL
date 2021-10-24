/********************************Assignment Question No : 15 ********************************/

--Creating Table '[PartnerMainTable]'

CREATE TABLE [AssignmentSchema].[PartnerMainTable]( 
	[ID] [INT] IDENTITY(1,1),
	[PartnerID] [INT] UNIQUE,
	[Description] [VARCHAR](40),
	[Value] [INT],
)
GO

--Creating Table '[PartnerHistoryTable]'

CREATE TABLE [AssignmentSchema].[PartnerHistoryTable]( 
	[ID] [INT]  IDENTITY(1,1),
	[PartnerID] [INT],
	[Description] [VARCHAR](40),
	[Value] [INT],
	[Version] [INT]
)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sathesh Rangasamy
-- Create date: 31/08/2018
-- Description:	Updating the values in the history table on any changes in the main table
-- =============================================
CREATE PROCEDURE [AssignmentSchema].[USP_UpdateHistoryTable]  
	
	@PartnerID INT,	@Description VARCHAR(40),@Value INT
	
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @Version INT	
	SET @Version=((select ISNULL(MAX([Version]),0) from [AssignmentSchema].[PartnerHistoryTable])+1)

	CREATE TABLE #temp( 
			[PartnerID] [INT],
			[Description] [VARCHAR](40),
			[Value] [INT],
			[Version] [INT]
		)
	INSERT INTO #temp
				   ([PartnerID]
				   ,[Description]
				   ,[Value]
				   )
			 SELECT T1.[PartnerID],T1.[Description],T1.[Value]
				   FROM 
				   [AssignmentSchema].[PartnerMainTable] T1
		UPDATE #temp SET [Version]=@version
		
		INSERT INTO [AssignmentSchema].[PartnerHistoryTable]
				   ([PartnerID]
				   ,[Description]
				   ,[Value]
				   ,[Version])
			 SELECT T1.[PartnerID],T1.[Description],T1.[Value],T1.[Version]
				   FROM 
				  #temp T1
	IF EXISTS (SELECT * FROM [AssignmentSchema].[PartnerMainTable] WHERE [PartnerID]=@PartnerId)
	BEGIN
		
		UPDATE [AssignmentSchema].[PartnerMainTable]
		   SET [Description] = @Description
			  ,[Value] =@Value
		 WHERE [PartnerID]=@PartnerId

		 PRINT [AssignmentSchema].[FN_CompareNewlyInsertedValue] (@PartnerId,@Version)
		
	END
	ELSE
	BEGIN
		
		INSERT INTO [AssignmentSchema].[PartnerMainTable]
				   ([PartnerID]
				   ,[Description]
				   ,[Value])
			 VALUES
				   (@PartnerId
				   ,@Description
				   ,@Value)
		PRINT 'Inserted New partner with ID ' + CAST(@PartnerId AS VARCHAR(40)) + '  Description ' + CAST(@Description AS VARCHAR(40)) + '  Value ' + CAST(@Value AS VARCHAR(40))

	END
	 
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sathesh Rangasamy
-- Create date: 30/08/2018
-- Description:	Function to Compare the New Value and existing Value
-- =============================================
CREATE FUNCTION [AssignmentSchema].[FN_CompareNewlyInsertedValue]
(
	@PartnerID INT,
	@Version INT
)
RETURNS VARCHAR(200)
AS
BEGIN
	
	DECLARE @ResultVar VARCHAR(200)='Updated '
	DECLARE @NewDescription VARCHAR(40),@NewValue INT
	DECLARE @OldDescription VARCHAR(40),@OldValue INT
	
	SELECT @NewDescription =[Description] from [AssignmentSchema].[PartnerMainTable] WHERE [PartnerID]=@PartnerID
	SELECT @NewValue =[Value] from [AssignmentSchema].[PartnerMainTable] WHERE [PartnerID]=@PartnerID
	
	SELECT @OldDescription =[Description] from [AssignmentSchema].[PartnerHistoryTable] WHERE Version=@Version AND [PartnerID]=@PartnerID
	SELECT @OldValue =[Value] from [AssignmentSchema].[PartnerHistoryTable] WHERE Version=@Version AND [PartnerID]=@PartnerID
	
	IF (@NewDescription != @OldDescription)
		SELECT @ResultVar += 'Description: ' + CAST(@OldDescription AS VARCHAR(40)) + ' to '  + CAST(@NewDescription AS VARCHAR(40))
	IF (@NewValue != @OldValue)
		SELECT @ResultVar += '   Value: ' + CAST(@OldValue AS VARCHAR(40)) + ' to '  + CAST(@NewValue AS VARCHAR(40))

	IF (@NewValue = @OldValue AND @NewDescription = @OldDescription )
		SELECT @ResultVar+='with the same Values'
	
	RETURN @ResultVar

END
GO

/*TRUNCATE TABLE [AssignmentSchema].[PartnerMainTable]
TRUNCATE TABLE [AssignmentSchema].[PartnerHistoryTable]
*/

EXEC [AssignmentSchema].[USP_UpdateHistoryTable]  4,'B',2
SELECT * FROM [AssignmentSchema].[PartnerMainTable]
SELECT * FROM [AssignmentSchema].[PartnerHistoryTable]
