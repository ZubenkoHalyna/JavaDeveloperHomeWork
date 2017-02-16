Select sum(salary)/count(developers.id) AS averageSalary
FROM projects JOIN developers ON projects.id = developers.projectId
GROUP BY developers.projectId
ORDER BY projects.cost - sum(salary)
LIMIT 1
