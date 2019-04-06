SELECT entertainers.EntStageName, 
		SUM(engagements.ContractPrice) AS TotalOfContracts 
	FROM entertainmentagencyexample.entertainers 
		INNER JOIN entertainmentagencyexample.engagements
			ON entertainers.EntertainerID = 
				engagements.EntertainerID
		GROUP BY entertainers.EntStageName;
