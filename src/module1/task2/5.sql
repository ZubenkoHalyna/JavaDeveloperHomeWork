SELECT
  companies.name,(Select customers.name
                  FROM projects JOIN developers ON projects.id = developers.projectId
                    JOIN customers ON projects.customerId = customers.id
                  WHERE projects.companyId = companies.id
                  GROUP BY projects.companyId, projects.customerId
                  ORDER BY projects.cost - sum(salary)
                  Limit 1) AS lowestProfitCustomer
FROM companies;