CREATE TABLE dim_customer AS
SELECT DISTINCT
  name_orig                           AS customer_id,
  CASE
    WHEN LEFT(name_orig,1) = 'C' THEN 'Consumer'
    WHEN LEFT(name_orig,1) = 'M' THEN 'Merchant'
    ELSE 'Unknown'
  END                                 AS customer_type
FROM raw_transactions;