SELECT Gender, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM entertainmentagencyexample.members) 
       AS PercentOfMembers 
FROM entertainmentagencyexample.members 
WHERE Gender = 'F';
