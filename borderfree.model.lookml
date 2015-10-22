- connection: verticaprod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: executive_dashboard
  joins: 
    - join: calendar_dim
      type: full_outer  
      relationship: many_to_one 
      sql_on: ${calendar_dim.date_key} = ${executive_dashboard.created_date_key}