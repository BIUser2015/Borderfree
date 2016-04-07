- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: customer_bucket 
  label: 'Customer Bucket, Monthly Metrics'
  always_filter: 
    customer_bucket.year_month: 201601
    customer_bucket.cohort_year_month: <> 201601