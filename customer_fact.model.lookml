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
    checkout_status : 'GREEN'
    
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
      
    - join: merch_per_customer
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.customer_key} = ${merch_per_customer.customer_key} and ${calendar_dim.year_month_number} = ${merch_per_customer.year_month_number} and ${order_fact_totals.ignore} = 0
      
    - join: L90_day_yesno
      type: left_outer
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_created_date_key} = ${L90_day_yesno.date_key} and ${order_fact_totals.ignore} = 0 
    
- view: merch_per_customer
  derived_table:
    ##persist_for: 24 hours
    ##indexes: [customer_key]
    sql: |
      SELECT o.customer_key
      , cd.year_month_number
      , count(distinct o.oh_merch_id) as number_merchant_shopped 
      
      FROM agg.order_fact_totals o
      JOIN dw.calendar_dim cd on o.oh_created_date_key = cd.date_key
      JOIN dw.merchant_dim md on o.oh_merch_id = md.merch_id
      JOIN dw.country_dim c on o.shipping_country_key = c.country_key
      WHERE o.ignore = 0 
      and o.accepted_order_yn = 'Y'
      and md.ignore = 0
      and md.date_to = '2199-12-31'
      
      GROUP BY o.customer_key, cd.year_month_number
  fields:
  
  - dimension: customer_key
    type: number
    primary_key: true
    sql: ${TABLE}.customer_key
    hidden: true

  - dimension: year_month_number
    type: number
    sql: ${TABLE}.year_month_number
    hidden: true
    
  - measure: customer
    type: count
    hidden: true
    
  - measure: number_merchant_shopped
    label: 'avg_number_merchant_shopped_by_month'   
    type: avg
    sql: ${TABLE}.number_merchant_shopped
    value_format: '#,##0.00'

- view: L90_day_yesno 
  derived_table:
    ##persist_for: 24 hours
    ##indexes: [date_key]
    sql: |
      select cd.date_key
      , 'Yes' as L90_yesno
      from dw.calendar_dim cd  
      join (
        select distinct month_year
        from dw.calendar_dim
        where trunc(date_time_start) < trunc(sysdate) 
        and trunc(date_time_start) >= trunc(sysdate-90)
        ) L90 on cd.month_year = L90.month_year
      
  fields:
  
  - dimension: date_key
    type: number
    primary_key: true
    sql: ${TABLE}.date_key
    hidden: true

  - dimension: L90_yesno
    label: 'Past 3 months'
    type: string
    sql: ${TABLE}.L90_yesno