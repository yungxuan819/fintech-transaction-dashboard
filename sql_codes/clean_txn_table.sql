CREATE TABLE fact_transactions AS
SELECT
  ROW_NUMBER() OVER ()         AS txn_id,
  step,
  (TIMESTAMP '2024-01-01' +
    (step - 1) * INTERVAL '1 hour') AS txn_timestamp,
  type                         AS txn_type,
  amount,
  name_orig                    AS customer_id,
  name_dest                    AS merchant_id,
  old_bal_orig,
  new_bal_orig,
  is_fraud,
  is_flagged
FROM raw_transactions;