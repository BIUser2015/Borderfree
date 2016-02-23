- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

- explore: calendar_dim
  joins: 
    - join: order_transaction_bi
      type: left_outer
      relationship: one_to_many 
      sql_on: ${calendar_dim.date_key} = ${order_transaction_bi.ot_date_key}
    
    - join: merchant_dim
      type: inner  
      relationship: one_to_many 
      sql_on: ${merchant_dim.merch_id} = ${order_transaction_bi.merch_id} and ${merchant_dim.date_to} = '2199-12-31'
      
