- connection: verticaprod

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# - explore: user_accounts
#   joins:
#     - join: orders
#       sql_on: ${orders.id} = ${order_items.order_id}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}
- explore: user_accounts
  joins:
    - join: order_fact_totals
      type: full_outer
      relationship: one_to_many
      sql_on: ${user_accounts.user_accountid} = ${order_fact_totals.user_account_id}  
  
    - join: merchant_dim
      type: full_outer
      relationship: many_to_one
      sql_on: ${order_fact_totals.oh_merch_id} = ${merchant_dim.merch_id}   