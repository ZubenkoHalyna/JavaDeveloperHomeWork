SELECT projects.name AS ProjectName
FROM developers JOIN projects ON developers.projectId = projects.id
GROUP BY projects.name
ORDER BY SUM(developers.salary) DESC
LIMIT 1;