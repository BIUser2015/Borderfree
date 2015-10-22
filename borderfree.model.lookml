- connection: verticaprod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: calendar_dim
  joins: 
    - join: executive_dashboard
      type: left_outer
      relationship: one_to_many 
      sql_on: ${calendar_dim.date_key} = ${executive_dashboard.created_date_key}