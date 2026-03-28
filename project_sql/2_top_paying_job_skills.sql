--2 What are the skills required for these top paying roles
WITH high_paying_jobs AS
(
SELECT 
    job.job_id as job_id,
    job.job_title as job_title,
    company.name as company_name,
    job.job_location as job_location,
    job.salary_year_avg as salary,
    job.job_posted_date as posted_date,
    job.job_schedule_type as schedule_type
FROM job_postings_fact job
LEFT JOIN company_dim company
ON job.company_id= company.company_id
WHERE job_title_short='Data Engineer'
AND job_country='India'
AND salary_year_avg IS NOT NULL
ORDER BY salary DESC
LIMIT 10
)
SELECT  high_paying_jobs.*,
    skills as skills_name 
FROM skills_dim skill
JOIN skills_job_dim sk
ON sk.skill_id=skill.skill_id
JOIN high_paying_jobs 
ON high_paying_jobs.job_id = sk.job_id
ORDER BY salary DESC

/*
Project Title

Top Paying Data Engineer Roles in India — Skill Analysis (2023)

Objective

The objective of this analysis is to identify:

Top 10 highest-paying Data Engineer roles in India
Most frequently required skills for these high-paying roles
Key market trends for Data Engineer positions in India
Dataset Used

The highest paying roles were found in companies such as:

Visa
Philips
Gartner
Eurofins
Dun & Bradstreet
Blueprint Technologies

These companies are primarily:

Product Companies
Enterprise Companies
Global MNCs

This indicates that product-based and enterprise organizations offer higher salaries for Data Engineers in India.

Top Skills Required in High-Paying Roles

Most demanded skills identified:

Core Skills (Most Frequent)
SQL
Python
Azure

These skills appeared most frequently across top-paying job postings, indicating that strong SQL and Python knowledge with cloud experience is essential for high-paying Data Engineer roles.

Big Data Technologies Observed

The following Big Data technologies appeared frequently:

Spark
Hadoop
Databricks
Scala

This suggests that Big Data processing experience significantly increases salary potential.

Cloud Platform Demand

Cloud technologies identified:

Azure (Most common)
AWS (Less frequent but present)

This indicates:

Indian enterprises prefer Azure ecosystem
Cloud skills are required for modern data engineering pipelines


These skills suggest that high-paying Data Engineers are expected to:

Handle data pipelines
Perform data transformation
Work with analytics tools
Key Insights
Insight 1 — SQL is the Most Critical Skill

SQL appeared most frequently in high-paying roles, indicating that data querying and transformation remain fundamental skills.

Insight 2 — Cloud Skills Increase Salary

Azure appeared frequently, showing cloud-based data engineering roles are highly valued.

Insight 3 — Big Data Experience Drives Higher Pay

Spark, Hadoop, and Databricks appeared in multiple job postings, showing distributed data processing skills are required for top salaries.

Insight 4 — Product Companies Pay More

Companies like Visa and Philips appeared multiple times, indicating product companies offer better compensation.

Conclusion

From this analysis, the most important skills for high-paying Data Engineer roles in India are:

Must Have Skills
SQL
Python
Azure
High Salary Boost Skills
Spark
Databricks
Hadoop
Scala
Supporting Skills
AWS
MongoDB
Power BI

This analysis shows that Data Engineers with cloud and big data experience command the highest salaries in India.

Project Impact

This analysis helps:

Data Engineers understand market demand
Job seekers prioritize learning roadmap
Companies understand competitive skill requirements


[
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "249000.0",
    "posted_date": "2023-08-09 03:12:42",
    "schedule_type": "Full-time",
    "skills_name": "sql"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "249000.0",
    "posted_date": "2023-08-09 03:12:42",
    "schedule_type": "Full-time",
    "skills_name": "python"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "249000.0",
    "posted_date": "2023-08-09 03:12:42",
    "schedule_type": "Full-time",
    "skills_name": "scala"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "249000.0",
    "posted_date": "2023-08-09 03:12:42",
    "schedule_type": "Full-time",
    "skills_name": "spark"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "249000.0",
    "posted_date": "2023-08-09 03:12:42",
    "schedule_type": "Full-time",
    "skills_name": "hadoop"
  },
  {
    "job_id": 65852,
    "job_title": "Sr. Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "249000.0",
    "posted_date": "2023-08-09 03:12:42",
    "schedule_type": "Full-time",
    "skills_name": "jira"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "sql"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "databricks"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "aws"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "bigquery"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "redshift"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "snowflake"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "pyspark"
  },
  {
    "job_id": 520909,
    "job_title": "Principal Data Engineer",
    "company_name": "Blueprint Technologies",
    "job_location": "Anywhere",
    "salary": "169500.0",
    "posted_date": "2023-06-19 17:29:05",
    "schedule_type": "Full-time",
    "skills_name": "unity"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "company_name": "Eurofins",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "165000.0",
    "posted_date": "2023-05-06 05:30:09",
    "schedule_type": "Full-time",
    "skills_name": "sql"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "company_name": "Eurofins",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "165000.0",
    "posted_date": "2023-05-06 05:30:09",
    "schedule_type": "Full-time",
    "skills_name": "postgresql"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "company_name": "Eurofins",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "165000.0",
    "posted_date": "2023-05-06 05:30:09",
    "schedule_type": "Full-time",
    "skills_name": "sql server"
  },
  {
    "job_id": 271081,
    "job_title": "Data Architect ( Performance Engineering  Architect )",
    "company_name": "Eurofins",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "165000.0",
    "posted_date": "2023-05-06 05:30:09",
    "schedule_type": "Full-time",
    "skills_name": "azure"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "161160.0",
    "posted_date": "2023-03-01 11:23:36",
    "schedule_type": "Full-time",
    "skills_name": "python"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "161160.0",
    "posted_date": "2023-03-01 11:23:36",
    "schedule_type": "Full-time",
    "skills_name": "java"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "161160.0",
    "posted_date": "2023-03-01 11:23:36",
    "schedule_type": "Full-time",
    "skills_name": "spark"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "161160.0",
    "posted_date": "2023-03-01 11:23:36",
    "schedule_type": "Full-time",
    "skills_name": "airflow"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "161160.0",
    "posted_date": "2023-03-01 11:23:36",
    "schedule_type": "Full-time",
    "skills_name": "hadoop"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "161160.0",
    "posted_date": "2023-03-01 11:23:36",
    "schedule_type": "Full-time",
    "skills_name": "kafka"
  },
  {
    "job_id": 948893,
    "job_title": "Sr. Cybersecurity Engineer (Hadoop Data engineering-Hadoop...",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "161160.0",
    "posted_date": "2023-03-01 11:23:36",
    "schedule_type": "Full-time",
    "skills_name": "yarn"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "company_name": "Gartner",
    "job_location": "India",
    "salary": "156500.0",
    "posted_date": "2023-10-31 13:09:54",
    "schedule_type": "Full-time",
    "skills_name": "sql"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "company_name": "Gartner",
    "job_location": "India",
    "salary": "156500.0",
    "posted_date": "2023-10-31 13:09:54",
    "schedule_type": "Full-time",
    "skills_name": "java"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "company_name": "Gartner",
    "job_location": "India",
    "salary": "156500.0",
    "posted_date": "2023-10-31 13:09:54",
    "schedule_type": "Full-time",
    "skills_name": "t-sql"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "company_name": "Gartner",
    "job_location": "India",
    "salary": "156500.0",
    "posted_date": "2023-10-31 13:09:54",
    "schedule_type": "Full-time",
    "skills_name": "azure"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "company_name": "Gartner",
    "job_location": "India",
    "salary": "156500.0",
    "posted_date": "2023-10-31 13:09:54",
    "schedule_type": "Full-time",
    "skills_name": "power bi"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "company_name": "Gartner",
    "job_location": "India",
    "salary": "156500.0",
    "posted_date": "2023-10-31 13:09:54",
    "schedule_type": "Full-time",
    "skills_name": "dax"
  },
  {
    "job_id": 1202415,
    "job_title": "Data Engineer - SQL (Power BI)",
    "company_name": "Gartner",
    "job_location": "India",
    "salary": "156500.0",
    "posted_date": "2023-10-31 13:09:54",
    "schedule_type": "Full-time",
    "skills_name": "notion"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-08 00:11:30",
    "schedule_type": "Full-time",
    "skills_name": "sql"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-08 00:11:30",
    "schedule_type": "Full-time",
    "skills_name": "python"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-08 00:11:30",
    "schedule_type": "Full-time",
    "skills_name": "azure"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-08 00:11:30",
    "schedule_type": "Full-time",
    "skills_name": "databricks"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-08 00:11:30",
    "schedule_type": "Full-time",
    "skills_name": "pandas"
  },
  {
    "job_id": 269694,
    "job_title": "Specialist – Data Engineer",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-08 00:11:30",
    "schedule_type": "Full-time",
    "skills_name": "numpy"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "sql"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "python"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "azure"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "databricks"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "pandas"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "numpy"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "power bi"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "qlik"
  },
  {
    "job_id": 576462,
    "job_title": "Manager - Data Engineering",
    "company_name": "Philips",
    "job_location": "India",
    "salary": "156000.0",
    "posted_date": "2023-11-09 23:11:20",
    "schedule_type": "Full-time",
    "skills_name": "sap"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "python"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "nosql"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "scala"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "java"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "go"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "mongodb"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "perl"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "mysql"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "mongodb"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "spark"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "hadoop"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "tableau"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "git"
  },
  {
    "job_id": 1227902,
    "job_title": "Sr Data Engineer",
    "company_name": "Visa",
    "job_location": "Bengaluru, Karnataka, India",
    "salary": "156000.0",
    "posted_date": "2023-10-23 17:08:59",
    "schedule_type": "Full-time",
    "skills_name": "jenkins"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "company_name": "Dun & Bradstreet",
    "job_location": "Hyderabad, Telangana, India",
    "salary": "155904.5",
    "posted_date": "2023-11-21 10:12:53",
    "schedule_type": "Full-time",
    "skills_name": "sql"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "company_name": "Dun & Bradstreet",
    "job_location": "Hyderabad, Telangana, India",
    "salary": "155904.5",
    "posted_date": "2023-11-21 10:12:53",
    "schedule_type": "Full-time",
    "skills_name": "python"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "company_name": "Dun & Bradstreet",
    "job_location": "Hyderabad, Telangana, India",
    "salary": "155904.5",
    "posted_date": "2023-11-21 10:12:53",
    "schedule_type": "Full-time",
    "skills_name": "azure"
  },
  {
    "job_id": 1565998,
    "job_title": "Data Engineer I (R-15364)",
    "company_name": "Dun & Bradstreet",
    "job_location": "Hyderabad, Telangana, India",
    "salary": "155904.5",
    "posted_date": "2023-11-21 10:12:53",
    "schedule_type": "Full-time",
    "skills_name": "aws"
  }
]
*/