SELECT
  txn_type,
  COUNT(*)                                          AS total_txns,
  SUM(is_fraud)                                     AS fraud_count,
  ROUND(SUM(is_fraud)::NUMERIC / COUNT(*) * 100, 2) AS fraud_rate_pct
FROM fact_transactions
GROUP BY txn_type
ORDER BY fraud_rate_pct DESC;