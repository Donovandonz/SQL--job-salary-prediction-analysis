-- 3. Impact of Experience --

-- Salary progression with experience
SELECT 
    experience_years,
    COUNT(*) as sample_size,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(skills_count), 1) as avg_skills
FROM job_staging
GROUP BY experience_years
ORDER BY experience_years;