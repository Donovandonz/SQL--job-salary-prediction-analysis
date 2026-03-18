-- 10. Multiple Factors Analysis --

-- Combined factors affecting salary
SELECT 
    education_level,
    experience_years,
    remote_work,
    COUNT(*) as sample_size,
    ROUND(AVG(salary), 2) as avg_salary
FROM job_staging
WHERE experience_years <= 10  -- Focus on reasonable experience range
GROUP BY education_level, experience_years, remote_work
HAVING COUNT(*) > 5  -- Only groups with sufficient data
ORDER BY experience_years, avg_salary DESC;