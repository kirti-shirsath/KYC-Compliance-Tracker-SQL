SELECT * FROM KYC_Tracker_Dataset1 LIMIT 2;

-- 1. Create table
CREATE TABLE KYC_Tracker_Dataset2 (
    Client_ID TEXT,
    Client_Name TEXT,
    Email TEXT,
    KYC_Status TEXT,
    Document_Submitted TEXT,
    Due_Date TEXT,
    Risk_Level TEXT
);

--Pending KYC Clients
SELECT Client_ID, Client_Name, KYC_Status
FROM kyc_clients
WHERE KYC_Status = 'Pending';

--Total count of pending clients
SELECT COUNT(*) AS Pending_Count
FROM kyc_clients
WHERE KYC_Status = 'Pending';

--Non-Compliant Clients
SELECT Client_ID, Client_Name, KYC_Status, Document_Submitted
FROM kyc_clients
WHERE NOT (KYC_Status = 'Completed' AND Document_Submitted = 'Yes');

-- Total Count of Non-Compliant Clients
SELECT COUNT(*) AS Non_Compliant_Count
FROM kyc_clients
WHERE NOT (KYC_Status = 'Completed' AND Document_Submitted = 'Yes');
--Overdue Clients (Due Date < Today)
SELECT Client_ID, Client_Name, Due_Date
FROM kyc_clients
WHERE Due_Date < '26-6-2025';
--Query to Count Overdue Clients:
SELECT COUNT(*) AS Overdue_Client_Count
FROM kyc_clients
WHERE Due_Date < '2025-06-26';
--Compliance Rate (%)
SELECT 
  ROUND(
    (SUM(CASE WHEN KYC_Status = 'Completed' AND Document_Submitted = 'Yes' THEN 1 ELSE 0 END) * 100.0)
    / COUNT(*), 2
  ) AS Compliance_Percentage
FROM kyc_clients;
--Risk Level Distribution
SELECT Risk_Level, COUNT(*) AS Total_Clients
FROM kyc_clients
GROUP BY Risk_Level;
-- Clients Due in Next 7 Days
SELECT Client_ID, Client_Name, Due_Date
FROM kyc_clients
WHERE Due_Date BETWEEN CURRENT_DATE AND CURRENT_DATE, '+7 days';
-- Compliance Summary (Compliant vs Non-Compliant)
SELECT 
  CASE 
    WHEN KYC_Status = 'Completed' AND Document_Submitted = 'Yes' THEN 'Compliant'
    ELSE 'Non-Compliant'
  END AS Compliance_Status,
  COUNT(*) AS Client_Count
FROM kyc_clients
GROUP BY Compliance_Status;


