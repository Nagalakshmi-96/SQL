/********************************Assignment Question No : 21********************************/

--Creating Table 'CheckAmount'

CREATE TABLE [AssignmentSchema].[CheckAmount](
	[ID] [INT] IDENTITY(1,1) PRIMARY KEY,
	[Name] [varchar](40) NOT NULL,
	[Amount] [INT] CHECK([AMOUNT]<=100)
)
GO

INSERT INTO [AssignmentSchema].[CheckAmount]
           ([Name]
           ,[Amount])
     VALUES
           ('A'
           ,90)
GO

INSERT INTO [AssignmentSchema].[CheckAmount]
           ([Name]
           ,[Amount])
     VALUES
           ('B'
           ,80)
GO

INSERT INTO [AssignmentSchema].[CheckAmount]
           ([Name]
           ,[Amount])
     VALUES
           ('C'
           ,99)
GO

--This insert statement will throw error B

INSERT INTO [AssignmentSchema].[CheckAmount]
           ([Name]
           ,[Amount])
     VALUES
           ('C'
           ,101)
GO
