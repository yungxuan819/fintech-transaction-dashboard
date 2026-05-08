# Fintech Transaction Analytics Dashboard

## Business Problem
How can a digital bank monitor transaction volume, 
detect fraud patterns, and track weekly performance 
across 6.3M transactions?

## Dataset
PaySim synthetic mobile money dataset (Kaggle)
6.3M transactions · 1 month · 5 transaction types

## Data Model
Star schema: fact_transactions + dim_customer + dim_merchant
Built in PostgreSQL, visualised in Power BI

## Key Findings
- TRANSFER and CASH-OUT are the only fraud-prone channels
  (0.77% and 0.18% fraud rate respectively)
- Fraud is concentrated in high-value transactions 
  (avg fraudulent txn: $X vs avg normal txn: $X)
- Fraud transactions peak across different transaction channels
  the most during mignight (12am to 5am) and the afternoon (1pm to 6pm)

## Tools Used
PostgreSQL · pgAdmin 4 · Power BI Desktop · DAX · SQL

## Dashboard
[[https://app.powerbi.com/view?r=eyJrIjoiZTZjNjUwM2UtZWI5Yy00Yzg3LWI0YzAtZmNiZWE5MjY0Y2ZiIiwidCI6IjUzN2MyYmUxLWZjZDQtNDVhOS04M2IzLTY2NTNlYWNjNTA3MCIsImMiOjEwfQ%3D%3D]]
