- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
- explore: calendar_dim 
  joins:
    - join: order_fact_totals
      type: left_outer
      relationship: one_to_many
      sql_on: ${calendar_dim.date_key} = ${order_fact_totals.oh_created_date_key}
      
    - join: customer_fact_1
      type: left_outer
      relationship: many_to_one
      sql_on: ${order_fact_totals.customer_key} = ${customer_fact_1.customer_key}
      
    - join: country_dim
      type: left_outer
      relationship: many_to_one
      sql_on: ${customer_fact_1.first_shipping_country_key} = ${country_dim.country_key} 
      
    - join: merchant_dim
      type: left_outer
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_merch_id} = ${merchant_dim.merch_id}   