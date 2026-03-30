--2 What are the skills required for these top paying roles
WITH high_paying_jobs AS
(
SELECT 
    job_id,
    job_title,
    salary_year_avg,
    name AS company_name
FROM 
  job_postings_fact job
LEFT JOIN 
  company_dim company
ON 
  job.company_id= company.company_id
WHERE 
  job_title_short='Data Engineer'
AND 
  job_country ='India'
AND  
  salary_year_avg IS NOT NULL
ORDER BY 
  salary_year_avg DESC
LIMIT 10
)
SELECT  high_paying_jobs.*,
    skills as skills_name 
FROM 
  high_paying_jobs 
JOIN 
  skills_job_dim sk
ON 
  high_paying_jobs.job_id=sk.job_id
JOIN 
   skills_dim ON sk.skill_id=skills_dim.skill_id
ORDER BY 
  salary_year_avg DESC

/*
Project Title

Top 10 skills for High Paying Data Engineer Roles in India — Skill Analysis (2023)

Objective

The objective of this analysis is to identify:

Key Skills Leading High Salaries:
- SQL
- Python
- Azure
- Spark
- Hadoop
- Databricks


[
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "salary_year_avg": "249000.0",
    "company_name": "Visa",
    "skills_name": "sql"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "salary_year_avg": "249000.0",
    "company_name": "Visa",
    "skills_name": "python"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "salary_year_avg": "249000.0",
    "company_name": "Visa",
    "skills_name": "scala"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "salary_year_avg": "249000.0",
    "company_name": "Visa",
    "skills_name": "spark"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "salary_year_avg": "249000.0",
    "company_name": "Visa",
    "skills_name": "hadoop"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "salary_year_avg": "249000.0",
    "company_name": "Visa",
    "skills_name": "jira"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "sql"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "databricks"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "aws"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "bigquery"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "redshift"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "snowflake"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "pyspark"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "169500.0",
    "company_name": "Blueprint Technologies",
    "skills_name": "unity"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "salary_year_avg": "165000.0",
    "company_name": "Eurofins",
    "skills_name": "sql"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "salary_year_avg": "165000.0",
    "company_name": "Eurofins",
    "skills_name": "postgresql"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "salary_year_avg": "165000.0",
    "company_name": "Eurofins",
    "skills_name": "sql server"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "salary_year_avg": "165000.0",
    "company_name": "Eurofins",
    "skills_name": "azure"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "salary_year_avg": "161160.0",
    "company_name": "Visa",
    "skills_name": "python"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "salary_year_avg": "161160.0",
    "company_name": "Visa",
    "skills_name": "java"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "salary_year_avg": "161160.0",
    "company_name": "Visa",
    "skills_name": "spark"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "salary_year_avg": "161160.0",
    "company_name": "Visa",
    "skills_name": "airflow"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "salary_year_avg": "161160.0",
    "company_name": "Visa",
    "skills_name": "hadoop"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "salary_year_avg": "161160.0",
    "company_name": "Visa",
    "skills_name": "kafka"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "salary_year_avg": "161160.0",
    "company_name": "Visa",
    "skills_name": "yarn"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "salary_year_avg": "156500.0",
    "company_name": "Gartner",
    "skills_name": "sql"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "salary_year_avg": "156500.0",
    "company_name": "Gartner",
    "skills_name": "java"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "salary_year_avg": "156500.0",
    "company_name": "Gartner",
    "skills_name": "t-sql"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "salary_year_avg": "156500.0",
    "company_name": "Gartner",
    "skills_name": "azure"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "salary_year_avg": "156500.0",
    "company_name": "Gartner",
    "skills_name": "power bi"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "salary_year_avg": "156500.0",
    "company_name": "Gartner",
    "skills_name": "dax"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "salary_year_avg": "156500.0",
    "company_name": "Gartner",
    "skills_name": "notion"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "sql"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "python"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "azure"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "databricks"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "pandas"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "numpy"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "power bi"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "qlik"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "sap"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "sql"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "python"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "azure"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "databricks"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "pandas"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Philips",
    "skills_name": "numpy"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "python"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "nosql"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "scala"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "java"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "go"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "mongodb"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "perl"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "mysql"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "mongodb"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "spark"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "hadoop"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "tableau"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "git"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "salary_year_avg": "156000.0",
    "company_name": "Visa",
    "skills_name": "jenkins"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "salary_year_avg": "155904.5",
    "company_name": "Dun & Bradstreet",
    "skills_name": "sql"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "salary_year_avg": "155904.5",
    "company_name": "Dun & Bradstreet",
    "skills_name": "python"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "salary_year_avg": "155904.5",
    "company_name": "Dun & Bradstreet",
    "skills_name": "azure"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "salary_year_avg": "155904.5",
    "company_name": "Dun & Bradstreet",
    "skills_name": "aws"
  }
]
*/