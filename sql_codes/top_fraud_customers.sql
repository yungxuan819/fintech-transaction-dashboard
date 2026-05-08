SELECT
  f.customer_id,
  c.customer_type,
  COUNT(*)                                            AS fraud_count,
  SUM(f.amount)                                       AS fraud_volume,
  ROUND(AVG(f.amount), 2)                             AS avg_fraud_amount,
  CASE
    WHEN step BETWEEN 1   AND 168 THEN 'Week 1'
    WHEN step BETWEEN 169 AND 336 THEN 'Week 2'
    WHEN step BETWEEN 337 AND 504 THEN 'Week 3'
    ELSE 'Week 4'
  END                                                 AS week_label
FROM fact_transactions f
JOIN dim_customer c ON f.customer_id = c.customer_id
WHERE f.is_fraud = 1
GROUP BY f.customer_id, c.customer_type, week_label
ORDER BY fraud_count DESC
LIMIT 10;