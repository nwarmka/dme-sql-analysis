-- View all data
SELECT * FROM claims;

-- Equipment usage
SELECT equipment, COUNT(*) AS usage_count
FROM claims
GROUP BY equipment
ORDER BY usage_count DESC;

-- Total revenue
SELECT SUM(cost) AS total_revenue
FROM claims;

-- Insurance vs patient
SELECT 
  SUM(insurance_paid) AS insurance_total,
  SUM(cost - insurance_paid) AS patient_total
FROM claims;

-- Revenue by region
SELECT region, SUM(cost) AS total_revenue
FROM claims
GROUP BY region
ORDER BY total_revenue DESC;
