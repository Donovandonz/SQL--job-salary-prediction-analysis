-- 5. Location and Remote Work Impact --

-- Salary analysis by location and remote work
SELECT 
    location,
    remote_work,
    COUNT(*) as job_count,
    ROUND(AVG(salary), 2) as avg_salary
FROM job_staging
GROUP BY location, remote_work
ORDER BY location, avg_salary DESC;