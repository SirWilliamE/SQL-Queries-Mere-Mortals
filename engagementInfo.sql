SELECT EngagementNumber, CustomerID, EntertainerID, 
datediff(EndDate, StartDate) AS NumberOfDays 
FROM entertainmentagencyexample.engagements
ORDER BY NumberOfDays;
