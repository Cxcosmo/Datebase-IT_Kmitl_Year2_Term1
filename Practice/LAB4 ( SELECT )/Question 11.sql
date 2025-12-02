SELECT  DISTINCT job_title, max_salary - min_salary `Salary difference`
FROM	jobs
ORDER BY `Salary difference` DESC;