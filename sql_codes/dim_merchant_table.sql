CREATE TABLE dim_merchant AS
SELECT DISTINCT
  name_dest                           AS merchant_id,
  CASE
    WHEN LEFT(name_dest,1) = 'M' THEN 'Merchant'
    ELSE 'Consumer Account'
  END                                 AS merchant_type
FROM raw_transactions;