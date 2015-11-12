- view: forecast_segment
  sql_table_name: LOOKER.FORECAST_SEGMENT
  fields:

  - dimension: forecast_segment_id
    primary_key: true
    type: int
    sql: ${TABLE}.FORECAST_SEGMENT_ID

  - dimension: mccy
    sql: ${TABLE}.MCCY

  - dimension: mv_accepted
    type: number
    sql: ${TABLE}.MV_ACCEPTED

  - dimension: net_mv_shipped
    type: number
    sql: ${TABLE}.NET_MV_SHIPPED

  - dimension: reporting_date
    type: number
    sql: ${TABLE}.REPORTING_DATE

  - dimension: reporting_segment
    sql: ${TABLE}.REPORTING_SEGMENT

  - measure: count
    type: count
    drill_fields: [forecast_segment_id]

  - measure: forecasted_mv_accepted 
    type: sum
    sql: ${mv_accepted}
    
  - measure: forecasted_mv_shipped
    type: sum
    sql: ${net_mv_shipped}
    
  - measure: difference_of_mv_accepted_vs_forecast 
    type: number
    sql: (${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted} )

  - measure: difference_of_mv_accepted_vs_forecast_percentage 
    type: number
    sql: ((${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted} ) / (NULLIFZERO(${forecasted_mv_accepted}))) * 100
    value_format: '0.00\%'
    
  - measure: difference_of_mv_shipped_vs_forecast 
    type: number
    sql: (${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped})        
    
  - measure: difference_of_mv_shipped_vs_forecast_percentage 
    type: number
    sql: ((${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped}) / (NULLIFZERO(${forecasted_mv_shipped}))) * 100
    value_format: '0.00\%'


