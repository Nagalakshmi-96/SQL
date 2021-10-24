/********************************Assignment Question No : 23********************************/

--Creating Table 'DecimalTable'

CREATE TABLE [AssignmentSchema].[DecimalTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[DecimalColumn1] [DECIMAL](10,3) NOT NULL,
	[DecimalColumn2] [DECIMAL](10,3) NOT NULL,
	[DecimalColumn3] [DECIMAL](10,3) NOT NULL,
	[DecimalColumn4] [DECIMAL](10,3) NOT NULL,
	[DecimalColumn5] [DECIMAL](10,3) NOT NULL,
)
GO

DECLARE @value1 DECIMAL(10,3)=1
DECLARE @value2 DECIMAL(10,3)=2.34
DECLARE @value3 DECIMAL(10,3)=5.678
DECLARE @value4 DECIMAL(10,3)=910.11
DECLARE @value5 DECIMAL(10,3)=NULL

INSERT INTO [AssignmentSchema].[DecimalTable]
           ([Name]
           ,[DecimalColumn1]
           ,[DecimalColumn2]
           ,[DecimalColumn3]
           ,[DecimalColumn4]
           ,[DecimalColumn5])
     VALUES
           ('Name1'
           ,ISNULL(@value1,0)
           ,ISNULL(@value2,0)
           ,ISNULL(@value3,0)
           ,ISNULL(@value4,0)
           ,ISNULL(@value5,0))
GO


DECLARE @value1 DECIMAL(10,3)=NULL
DECLARE @value2 DECIMAL(10,3)=NULL
DECLARE @value3 DECIMAL(10,3)=NULL
DECLARE @value4 DECIMAL(10,3)=NULL
DECLARE @value5 DECIMAL(10,3)=NULL

INSERT INTO [AssignmentSchema].[DecimalTable]
           ([Name]
           ,[DecimalColumn1]
           ,[DecimalColumn2]
           ,[DecimalColumn3]
           ,[DecimalColumn4]
           ,[DecimalColumn5])
     VALUES
           ('Name2'
           ,ISNULL(@value1,0)
           ,ISNULL(@value2,0)
           ,ISNULL(@value3,0)
           ,ISNULL(@value4,0)
           ,ISNULL(@value5,0))
GO

--Displaying all inserted Values

SELECT *
  FROM [AssignmentSchema].[DecimalTable]
GO
