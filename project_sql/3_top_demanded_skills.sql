--3. What are the most in demand skills for my role?
SELECT 
    skills as skill_name,
    count(sk.job_id) as demand_count
From job_postings_fact j
Join skills_job_dim sk
ON j.job_id= sk.job_id
Join skills_dim s
ON s.skill_id=sk.skill_id
WHERE job_title_short='Data Engineer'
GROUP BY skills 
ORDER BY demand_count DESC
Limit 10

/*
To target Data Engineer roles, the most important skills are:

Must Have
SQL
Python
Cloud (Azure / AWS)
High Demand
Spark
Hadoop
Databricks
Kafka
Good to Have
Scala
Java

This analysis shows that Data Engineering roles require a mix of SQL, programming, cloud, and big data technologies.
[
  {
    "demand_count": "113375",
    "skill_name": "sql"
  },
  {
    "demand_count": "108265",
    "skill_name": "python"
  },
  {
    "demand_count": "62174",
    "skill_name": "aws"
  },
  {
    "demand_count": "60823",
    "skill_name": "azure"
  },
  {
    "demand_count": "53789",
    "skill_name": "spark"
  },
  {
    "demand_count": "35642",
    "skill_name": "java"
  },
  {
    "demand_count": "29163",
    "skill_name": "kafka"
  },
  {
    "demand_count": "28883",
    "skill_name": "hadoop"
  },
  {
    "demand_count": "28791",
    "skill_name": "scala"
  },
  {
    "demand_count": "27532",
    "skill_name": "databricks"
  }
]

*/