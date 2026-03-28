/* 5. what are the most optimal skills to learn?
    a. Optimal: High Demand and High PAY
- Idendentify skills in high demand and associated with high average salaries for data engineer role
- concentrates on remote positions with specified salaries
- WHY ? Targets skills that offer job security (high demand) and financial
benefits (high salaries), offering strategic insights for career develoment 
in DE role
*/

WITH demand_skills AS(
    SELECT 
        s.skill_id,
        s.skills ,
        count(sk.job_id) as demand_count
    From job_postings_fact j
    Join skills_job_dim sk
    ON j.job_id= sk.job_id
    Join skills_dim s
    ON s.skill_id=sk.skill_id
    WHERE job_title_short='Data Engineer'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home= TRUE
    GROUP BY
     s.skill_id
),
average_salary AS
(
    SELECT 
        sk.skill_id,
   ROUND(avg(salary_year_avg),0) as avg_salary
FROM 
    job_postings_fact j
    INNER JOIN 
    skills_job_dim sk
    ON j.job_id=sk.job_id
    INNER JOIN skills_dim s
    ON sk.skill_id=s.skill_id
WHERE job_title_short='Data Engineer'
AND salary_year_avg IS NOT NULL
AND job_work_from_home= TRUE
GROUP BY sk.skill_id
)

SELECT demand_skills.skill_id,
    demand_skills.skills,
    demand_count,
    avg_salary
FROM demand_skills
INNER JOIN average_salary
ON demand_skills.skill_id=average_salary.skill_id
ORDER BY demand_count DESC,
    avg_salary DESC
LIMIT 25