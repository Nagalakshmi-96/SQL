/********************************Assignment Question No : 14 I********************************/

--Creating Table '[CursorDelete]'

CREATE TABLE [AssignmentSchema].[CursorDelete]( 
	[ID] [INT],
	[Name] [VARCHAR](40)
)
GO

--Inserting Values into the table [CursorDelete]

INSERT INTO [AssignmentSchema].[CursorDelete]
           ([ID]
           ,[Name])
     VALUES
           (1
           ,'User1')
GO

INSERT INTO [AssignmentSchema].[CursorDelete]
           ([ID]
           ,[Name])
     VALUES
           (2
           ,'User2')
GO

INSERT INTO [AssignmentSchema].[CursorDelete]
           ([ID]
           ,[Name])
     VALUES
           (3
           ,'User3')
GO

INSERT INTO [AssignmentSchema].[CursorDelete]
           ([ID]
           ,[Name])
     VALUES
           (4
           ,'User4')
GO

INSERT INTO [AssignmentSchema].[CursorDelete]
           ([ID]
           ,[Name])
     VALUES
           (5
           ,'User5')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sathesh Rangasamy
-- Create date: 30/08/2018
-- Description:	Procedure With Cursor to delete a record from the table [CursorDelete]
-- =============================================
ALTER PROCEDURE [AssignmentSchema].[USP_updateDeleteRecords]
	@ID INT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @uid as int

	DECLARE CR_DeleteCursor CURSOR LOCAL FOR
	SELECT ID FROM [AssignmentSchema].[CursorDelete]
	OPEN CR_DeleteCursor;
	FETCH NEXT FROM CR_DeleteCursor INTO @uid;
	WHILE @@FETCH_STATUS = 0
		BEGIN
			IF(@uid=@ID)
			BEGIN
				delete from [AssignmentSchema].[CursorDelete] where current of CR_DeleteCursor
			END
			FETCH NEXT FROM CR_DeleteCursor INTO @uid;
		END
	CLOSE CR_DeleteCursor
	DEALLOCATE CR_DeleteCursor
	
	SET NOCOUNT OFF;

END
GO

EXEC [AssignmentSchema].[USP_updateDeleteRecords] @ID=3
GO

SELECT [ID]
      ,[Name]
  FROM [AssignmentSchema].[CursorDelete]
GO
