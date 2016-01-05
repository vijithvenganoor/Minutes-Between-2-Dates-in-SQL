CREATE FUNCTION dbo.ExplodeMinutes(@StartDate Datetime, @EndDate Datetime)
RETURNS table as 
return (
SELECT DATEADD(MINUTE,number*30,@StartDate) [Date] FROM master..spt_values WHERE type = 'P' 
AND DATEADD(MINUTE,number*30,@StartDate) <= @EndDate
);
