/* 5. what are the most optimal skills to learn?
    a. Optimal: High Demand and High PAY
- Idendentify skills in high demand and associated with high average salaries for data engineer role
- concentrates on remote positions with specified salaries
- WHY ? Targets skills that offer job security (high demand) and financial
benefits (high salaries), offering strategic insights for career develoment 
in DE role
*/


SELECT 
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Engineer'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True 
GROUP BY
    skills_dim.skill_id
HAVING
    COUNT(skills_job_dim.job_id) > 10
ORDER BY
    demand_count DESC,
    avg_salary  DESC
LIMIT 25;

