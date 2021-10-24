/********************************Assignment Question No : 11 I********************************/

--Creating Table '[ClientTable]'

CREATE TABLE [AssignmentSchema].[SumColumnWise]( 
	[ID] [INT],
	[Amount1] [INT],
	[Amount2] [INT],
	[Amount3] [INT],
	[Amount4] [INT],
)
GO

--Inserting the values in the [SumColumnWise]

INSERT INTO [AssignmentSchema].[SumColumnWise]
           ([ID]
           ,[Amount1]
           ,[Amount2]
           ,[Amount3]
           ,[Amount4])
     VALUES
           (1
           ,500
           ,100
           ,200
           ,500
		   )
GO

INSERT INTO [AssignmentSchema].[SumColumnWise]
           ([ID]
           ,[Amount1]
           ,[Amount2]
           ,[Amount3]
           ,[Amount4])
     VALUES
           (2
           ,800
           ,200
           ,300
           ,600
		   )
GO

INSERT INTO [AssignmentSchema].[SumColumnWise]
           ([ID]
           ,[Amount1]
           ,[Amount2]
           ,[Amount3]
           ,[Amount4])
     VALUES
           (3
           ,900
           ,300
           ,400
           ,700
		   )
GO


SELECT Amount, Value
FROM 
(SELECT SUM(Amount1) as Amount1,SUM(Amount2) as Amount2,SUM(Amount3) as Amount3,SUM(Amount4) as Amount4 FROM [AssignmentSchema].[SumColumnWise]) Amt1

UNPIVOT
(
Value for Amount in (Amount1,Amount2,Amount3,Amount4)
) u;

w