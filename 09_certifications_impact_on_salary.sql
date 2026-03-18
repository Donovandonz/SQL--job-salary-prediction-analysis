-- 9. Certifications Impact --

-- Certification impact on salary
SELECT 
    CASE 
        WHEN certifications = 0 THEN 'No certifications'
        WHEN certifications BETWEEN 1 AND 2 THEN '1-2 certifications'
        WHEN certifications BETWEEN 3 AND 5 THEN '3-5 certifications'
        ELSE '5+ certifications'
    END as cert_group,
    COUNT(*) as count,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(experience_years), 1) as avg_experience
FROM job_staging
GROUP BY 
    CASE 
        WHEN certifications = 0 THEN 'No certifications'
        WHEN certifications BETWEEN 1 AND 2 THEN '1-2 certifications'
        WHEN certifications BETWEEN 3 AND 5 THEN '3-5 certifications'
        ELSE '5+ certifications'
    END
ORDER BY avg_salary DESC;