SELECT SUM(salary) AS SumSalary
FROM developers JOIN developerskills ON developers.id = developerskills.developerId
JOIN skills ON developerskills.skillId = skills.id
WHERE skills.name = 'java';