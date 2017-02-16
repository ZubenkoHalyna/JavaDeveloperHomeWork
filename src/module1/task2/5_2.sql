CREATE TEMPORARY TABLE Profit
  Select projects.cost - sum(salary) AS Profit,
    projects.companyId,
    projects.customerId
  FROM projects JOIN developers ON projects.id = developers.projectId
  GROUP BY projects.companyId, projects.customerId;

CREATE TEMPORARY TABLE MinProfit
  Select min(Profit) AS Profit,
    Profit.companyId
  FROM Profit
  GROUP BY Profit.companyId;

SELECT
  companies.name AS companiy, customers.name AS lowestProfitCustomer
FROM Profit AS Profit
  JOIN MinProfit AS MinProfit ON Profit.companyId = MinProfit.companyId
  JOIN companies ON Profit.companyId = companies.id
  JOIN customers ON Profit.customerId = customers.id
WHERE MinProfit.Profit = Profit.Profit;

DROP TABLE Profit;
DROP TABLE MinProfit;