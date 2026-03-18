-- 7. Skills Impact --

-- Correlation between skills count and salary
SELECT 
    skills_count,
    COUNT(*) as sample_size,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(experience_years), 1) as avg_experience
FROM job_staging
GROUP BY skills_count
ORDER BY skills_count;