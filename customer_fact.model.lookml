- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# - explore: order_items
#   joins:
#     - join: orders
#       sql_on: ${orders.id} = ${order_items.order_id}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}

- explore: order_fact_totals 
  always_filter: 
    accepted_order_yn : Y
    ignore : 0
    
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
      sql_on: ${order_fact_totals.shipping_country_key} = ${country_dim.country_key} 
      
    - join: calendar_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_created_date_key} = ${calendar_dim.date_key} ## and ${calendar_dim.date_time_start} < trunc(sysdate) 
      
    - join: merch_per_customer
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.customer_key} = ${merch_per_customer.customer_key} 

- view: merch_per_customer
  derived_table:
    ##persist_for: 24 hours
    ##indexes: [customer_key]
    sql: |
      SELECT o.customer_key
      , count(distinct o.oh_merch_id) as number_merchant_shopped 
      
      FROM agg.order_fact_totals o
      WHERE o.ignore = 0 and o.accepted_order_yn = 'Y'
      and o.shipping_country_key = ${order_fact_totals.shipping_country_key}
      and o.oh_created_date_key = ${calendar_dim.date_key} 
      
      GROUP BY o.customer_key  
  fields:
  
  - dimension: customer_key
    type: number
    primary_key: true
    sql: ${TABLE}.customer_key
    hidden: true

  - measure: customer
    type: count
    hidden: true
    
  - measure: total_number_merchant_shopped
    type: sum
    sql: ${TABLE}.number_merchant_shopped
    hidden: true
    
  - measure: number_merchant_shopped
    type: number
    sql: ${TABLE}.total_number_merchant_shopped / ${TABLE}.customer 