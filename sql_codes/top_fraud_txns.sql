SELECT txn_id, txn_timestamp, txn_type, amount, customer_id
FROM fact_transactions
WHERE is_fraud = 1
ORDER BY amount DESC
LIMIT 10;