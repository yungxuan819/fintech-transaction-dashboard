SELECT
  (step - 1) % 24          AS hour_of_day,
  CASE
    WHEN step BETWEEN 1   AND 168 THEN 'Week 1'
    WHEN step BETWEEN 169 AND 336 THEN 'Week 2'
    WHEN step BETWEEN 337 AND 504 THEN 'Week 3'
    ELSE 'Week 4'
  END                       AS week_label,
  COUNT(*)                  AS fraud_count,
  SUM(amount)               AS fraud_volume
FROM fact_transactions
WHERE is_fraud = 1
GROUP BY 1, 2
ORDER BY 1;