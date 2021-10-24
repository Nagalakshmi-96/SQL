/********************************Assignment Question No : 25********************************/

--Creating the Table for the Assignment Question No : 25

CREATE TABLE [AssignmentSchema].[HoldingPeriod]
(
	[ID] [INT] IDENTITY(1,1) PRIMARY KEY,
	[SecurityID] [VARCHAR](40) NOT NULL,
	[FromDate] [date],
	[ToDate] [date],
)
GO

--Inserting Default Values in the Table

INSERT INTO [AssignmentSchema].[HoldingPeriod]
           ([SecurityID]
           ,[FromDate]
           ,[ToDate])
     VALUES
           ('A'
           ,'12/31/2016'
           ,'1/1/2017')
GO

INSERT INTO [AssignmentSchema].[HoldingPeriod]
           ([SecurityID]
           ,[FromDate]
           ,[ToDate])
     VALUES
           ('B'
           ,'2/2/2014'
           ,'4/2/2017')
GO

INSERT INTO [AssignmentSchema].[HoldingPeriod]
           ([SecurityID]
           ,[FromDate]
           ,[ToDate])
     VALUES
           ('C'
           ,'4/2/2013'
           ,'5/2/2012')
GO

INSERT INTO [AssignmentSchema].[HoldingPeriod]
           ([SecurityID]
           ,[FromDate]
           ,[ToDate])
     VALUES
           ('E'
           ,'4/30/2015'
           ,'5/2/2016')
GO

INSERT INTO [AssignmentSchema].[HoldingPeriod]
           ([SecurityID]
           ,[FromDate]
           ,[ToDate])
     VALUES
           ('F'
           ,'2/29/2016'
           ,'2/28/2017')
GO

INSERT INTO [AssignmentSchema].[HoldingPeriod]
           ([SecurityID]
           ,[FromDate]
           ,[ToDate])
     VALUES
           ('G'
           ,'9/11/2015'
           ,'9/1/2015')
GO

--Displaying all the Inserted Records

SELECT *
  FROM [AssignmentSchema].[HoldingPeriod]
GO

--Finding Date Difference Between the dates

--With Negative Values

SELECT [SecurityID]
      ,DATEDIFF(day, [FromDate], [ToDate]) AS 'Holding Period'
  FROM [AssignmentSchema].[HoldingPeriod]
GO

--Without Negative Values

SELECT [SecurityID]
      ,ABS(DATEDIFF(day, [FromDate], [ToDate])) AS 'Holding Period'
  FROM [AssignmentSchema].[HoldingPeriod]
GO