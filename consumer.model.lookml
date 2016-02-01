- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
- explore: order_fact_totals 
  joins:
    - join: customer_fact_1
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.customer_key} = ${customer_fact_1.customer_key}
    
    - join: order_fact 
      type: inner
      relationship: one_to_many
      sql_on: ${order_fact_totals.oh_order_id} = ${order_fact.oh_order_id}
      
    - join: product_dim 
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact.catalog_product_key} = ${product_dim.product_key}
    
    - join: calendar_dim 
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_created_date_key} = ${calendar_dim.date_key} 
      
    - join: country_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.shipping_country_key} = ${country_dim.country_key} 
      
    - join: merchant_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_merch_id} = ${merchant_dim.merch_id}   