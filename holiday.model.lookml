- connection: verticaprod

- scoping: true           # for backward compatibility
- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

- explore: calendar_dim
  joins: 
    - join: forecast_segment
      type: left_outer
      relationship: one_to_many 
      sql_on: ${calendar_dim.date_key} = ${forecast_segment.reporting_date}

    - join: forecast_merchant
      type: left_outer  
      relationship: one_to_many 
      sql_on: ${calendar_dim.date_key} = ${forecast_merchant.reporting_date}
      
    - join: actuals_historical
      type: left_outer  
      relationship: one_to_many 
      sql_on: ${calendar_dim.date_key} = ${actuals_historical.reporting_date}  
      
    - join: dashboard_currency_conversion
      type: inner
      relationship: one_to_one
      sql_on: ${calendar_dim.date_key} = ${dashboard_currency_conversion.reporting_date}        
    
      
