/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [ID]
,[Name] AS 'Competitor Name'
  
  ,CASE WHEN SEX = 'M' Then 'Male' Else 'Female' END as Sex
,[Age]
,CASE  When [Age] <18 Then 'Under 18'
	   When [Age] Between 18 and 25 then '18-25'
	   When [Age] between 25 and 30 then '25-30'
	   when [Age] >30 Then 'Over 30'
End as [Age grouping]
,[Height]
,[Weight]
,[NOC] as 'Nation Code'
--,CHARINDEX(' ',Games)-1 AS 'Example 1'
--,CHARINDEX(' ', REVERSE(Games))-1 AS 'Example 2'
,left(Games,CHARINDEX(' ',Games) -1) As 'Year'
--,Right(Games,CHARINDEX(' ',Reverse(Games))-1 )AS 'Season'
--,[Games]
,[Sport]
,[Event]
,CASE WHEN Medal ='NA' Then 'Not Registered' ELSE Medal END as Medal

From [olympic_games].[dbo].[athletes_event_results]
Where RIGHT (Games,Charindex(' ', REVERSE(Games))-1) = 'Summer'
