- connection: verticaprod

- scoping: true           # for backward compatibility
- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: calendar_dim
  joins: 
    - join: executive_dashboard
      type: left_outer
      relationship: one_to_many 
      sql_on: ${calendar_dim.date_key} = ${executive_dashboard.created_date_key}