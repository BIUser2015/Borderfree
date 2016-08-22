- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
- explore: ab_test_results
  label: 'Conversion Experiments' 
  joins:
    - join: ab_metadata
      type: inner
      relationship: many_to_one
      sql_on: ${ab_test_results.experiment_id} = ${ab_metadata.experiment_id}
      
    - join: order_fact_totals
      type: inner
      relationship: one_to_one
      sql_on: ${ab_test_results.order_id} = ${order_fact_totals.oh_order_id} and ${order_fact_totals.ignore} = 0
      
    - join: merchant_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_merch_id} = ${merchant_dim.merch_id} and ${merchant_dim.ignore} = 0 and ${merchant_dim.date_to} = '2199-12-31'
      
    - join: country_dim
      type: inner
      relationship: many_to_one
      sql_on: ${order_fact_totals.shipping_country_key} = ${country_dim.country_key}