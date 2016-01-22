- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
- explore: customer_fact_1
  joins:
    - join: country_dim
      type: left_outer
      relationship: many_to_one
      sql_on: ${country_dim.country_key} = ${customer_fact_1.first_shipping_country_key}