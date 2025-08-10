-- Count transactions by agent --

SELECT a.Agentid, a.AgentName, COUNT(t.TransactionID) AS Transaction_Count
FROM agents as a
JOIN transaction AS t ON a.AgentID = t.AgentID
GROUP BY a.AgentID, a.AgentName
ORDER BY Transaction_Count DESC;

-- Total amount paid by each customer --

SELECT c.CustomerID, c.FullName, SUM(t.AmountPaid) AS Total_Amt_Paid
FROM customers as c
JOIN transaction AS t ON c.CustomerID = t.CustomerID
GROUP BY c.CustomerID, c.FullName;

-- Most active cities or states  --

SELECT p.PropertyCity, COUNT(t.TransactionID) AS Transaction_Count
FROM properties as p
JOIN transaction AS t ON p.PropertyID = t.PropertyID
GROUP BY p.PropertyCity
ORDER BY Transaction_Count DESC;


