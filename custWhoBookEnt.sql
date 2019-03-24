SELECT concat(CustFirstName, ' ', CustLastName) AS CustomerName 
  FROM entertainmentagencyexample.customers
  WHERE customers.CustomerID IN 
    (SELECT CustomerID 
      FROM engagements 
      WHERE engagements.EntertainerID = 1002 OR 
      engagements.EntertainerID = 1006);
