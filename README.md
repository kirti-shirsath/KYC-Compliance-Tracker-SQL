# KYC-Compliance-Tracker-SQL
SQL project to analyze and track KYC compliance with risk-based client insights.

# ✅ KYC Compliance Tracker – SQL Project

## 📌 Project Overview

This project simulates a real-world **KYC (Know Your Customer)** compliance tracker using **SQL queries** to analyze and monitor client compliance status. It is designed for use by financial risk and regulatory teams to:

- Detect pending or overdue KYC clients  
- Track compliance rate  
- Prioritize high-risk profiles  
- Enable timely decision-making

---

## 🧰 Tools & Technologies Used

| Tool      | Purpose                                  |
|-----------|------------------------------------------|
| **SQL**   | Data querying, aggregation, and logic    |
| **PostgreSQL / MySQL / SQLite** | Compatible with all platforms |
| **PowerPoint (PDF)** | Presentation of SQL insights   |

---

## 🧠 Key SQL Queries Used

| Query Purpose                        | Description                                       |
|-------------------------------------|---------------------------------------------------|
| `SELECT ... WHERE KYC_Status = 'Pending'` | List of clients who haven’t completed KYC       |
| `COUNT(*)` queries                  | Total pending, non-compliant, or overdue clients |
| `CASE WHEN` logic                   | Classify clients as compliant or non-compliant   |
| `GROUP BY Risk_Level`               | Shows client distribution by risk category       |
| `ROUND()` with `CASE`              | Calculates compliance percentage (%)             |

---

## 📊 Key Insights

1. **29 clients** have KYC still pending – need urgent follow-up  
2. **30 clients** are non-compliant (either KYC incomplete or documents missing)  
3. **35 clients** have missed the KYC due date (as of 26 June 2025)  
4. **41.18%** of all clients are fully compliant  
5. Risk level breakdown helps target **High-risk** clients more effectively  
6. Summary query gives a quick view of **overall compliance progress**

---

 
