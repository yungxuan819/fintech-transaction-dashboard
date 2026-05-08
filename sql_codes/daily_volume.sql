SELECT
  DATE_TRUNC('day', txn_timestamp) AS txn_date,
  txn_type,
  COUNT(*)                          AS txn_count,
  SUM(amount)                       AS total_volume,
  AVG(amount)                       AS avg_ticket
FROM fact_transactions
GROUP BY 1, 2
ORDER BY 1;