- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
- explore: order_fact
  label: 'Order Items'
  joins:
  
   - join: merchant_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact.oh_merch_id} = ${merchant_dim.merch_id} and ${merchant_dim.ignore} = 0 and ${merchant_dim.date_to} = '2199-12-31'
      
   - join: country_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact.shipping_country_key} = ${country_dim.country_key}
     
   - join: calendar_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact.oh_created_date_key} = ${calendar_dim.date_key} and ${order_fact.ignore} = 0     
     
   - join: product_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact.catalog_product_key} = ${product_dim.product_key}
     
   - join: merchant_category_dim
     type: inner
     relationship: many_to_one
     sql_on: ${order_fact.merchant_category_key} = ${merchant_category_dim.merch_category_key}