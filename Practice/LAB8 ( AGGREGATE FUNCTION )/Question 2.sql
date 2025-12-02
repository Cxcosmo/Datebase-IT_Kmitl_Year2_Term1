SELECT AVG(min_salary) `average_salary`, MAX(min_salary) `max_salary`,
			MIN(min_salary) `low_salary`, COUNT(job_id) `count_job`
FROM jobs;