- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: order_fact_totals
  label: 'Customer Bucket, Monthly Metrics'
  always_filter: 
    order_fact_totals.checkout_status: 'GREEN'
    customer_bucket.year_month: 201601
    
  joins:
   - join: customer_fact
     type: inner
     relationship: many_to_one 
     sql_on: ${order_fact_totals.customer_key} = ${customer_fact.customer_key} and ${order_fact_totals.ignore} = 0
      
   - join: merchant_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact_totals.oh_merch_id} = ${merchant_dim.merch_id} and ${merchant_dim.ignore} = 0 and ${merchant_dim.date_to} = '2199-12-31'
     fields: []
      
   - join: country_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact_totals.shipping_country_key} = ${country_dim.country_key} and ${order_fact_totals.ignore} = 0
     fields: [country_name]
      
   - join: calendar_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact_totals.oh_created_date_key} = ${calendar_dim.date_key} and ${order_fact_totals.ignore} = 0 and ${calendar_dim.current_day} = 'No'
     fields: []
      
   - join: customer_bucket
     type: inner
     relationship: many_to_one
     sql_on: ${calendar_dim.year_month_number} = ${customer_bucket.order_created_month} and ${order_fact_totals.ignore} = 0