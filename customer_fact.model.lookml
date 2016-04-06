- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: order_fact_totals 
  label: 'Customer Fact'
  always_filter: 
    order_fact_totals.checkout_status: 'GREEN'
    calendar_dim.year_value: 2016
    
  joins:
    - join: customer_fact
      type: inner
      relationship: many_to_one 
      sql_on: ${order_fact_totals.customer_key} = ${customer_fact.customer_key} and ${order_fact_totals.ignore} = 0
      
    - join: merchant_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_merch_id} = ${merchant_dim.merch_id} and ${merchant_dim.ignore} = 0 and ${merchant_dim.date_to} = '2199-12-31'
      
    - join: country_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.shipping_country_key} = ${country_dim.country_key} and ${order_fact_totals.ignore} = 0
      
    - join: calendar_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_created_date_key} = ${calendar_dim.date_key} and ${order_fact_totals.ignore} = 0 and ${calendar_dim.current_day} = 'No'
      fields: [calendar_dim.customer_fact_detail*]
      
    - join: merch_per_customer
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.customer_key} = ${merch_per_customer.customer_key} and ${calendar_dim.year_month_number} = ${merch_per_customer.year_month_number} and ${order_fact_totals.ignore} = 0

