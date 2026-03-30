--1. What are the top paying jobs for my role?

SELECT 
    job.job_id as job_id,
    job.job_title as job_title,
    company.name as company_name,
    job.job_location as job_location,
    job.salary_year_avg as salary,
    job.job_posted_date as posted_date,
    job.job_schedule_type as schedule_type
FROM 
    job_postings_fact job
LEFT JOIN 
    company_dim company
ON 
    job.company_id= company.company_id
WHERE 
    job.job_title_short='Data Engineer'
AND 
    job.salary_year_avg IS NOT NULL
ORDER BY 
    salary DESC
LIMIT 10



