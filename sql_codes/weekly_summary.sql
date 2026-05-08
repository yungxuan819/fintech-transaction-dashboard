SELECT
  CASE
    WHEN step BETWEEN 1   AND 168 THEN 'Week 1'
    WHEN step BETWEEN 169 AND 336 THEN 'Week 2'
    WHEN step BETWEEN 337 AND 504 THEN 'Week 3'
    ELSE 'Week 4'
  END                     AS week_label,
  CASE
    WHEN step BETWEEN 1   AND 168 THEN 1
    WHEN step BETWEEN 169 AND 336 THEN 2
    WHEN step BETWEEN 337 AND 504 THEN 3
    ELSE 4
  END                     AS week_num,
  COUNT(*)                AS txn_count,
  SUM(amount)             AS total_volume,
  AVG(amount)             AS avg_ticket,
  SUM(is_fraud)           AS fraud_count,
  ROUND(SUM(is_fraud)::NUMERIC / COUNT(*) * 100, 4) AS fraud_rate_pct
FROM fact_transactions
GROUP BY 1, 2
ORDER BY 2;