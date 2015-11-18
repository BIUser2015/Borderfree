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

  - measure: forecasted_mv_accepted_alipay 
    type: sum
    filter: 
      reporting_segment: Alipay 
    sql: ${mv_accepted}
    
  - measure: forecasted_mv_accepted_fate 
    type: sum
    filter: 
      reporting_segment: Fate     
    sql: ${mv_accepted}
    
  - measure: forecasted_mv_accepted_us 
    type: sum
    filter: 
      reporting_segment: Excluding FATE and Alipay 
    sql: ${mv_accepted}    
    
  - measure: forecasted_mv_shipped_alipay
    type: sum
    filter: 
      reporting_segment: Alipay     
    sql: ${net_mv_shipped}
    
  - measure: forecasted_mv_shipped_fate
    type: sum
    filter: 
      reporting_segment: Fate      
    sql: ${net_mv_shipped}
    
  - measure: forecasted_mv_shipped_us
    type: sum
    filter: 
      reporting_segment: Excluding FATE and Alipay     
    sql: ${net_mv_shipped}    
    
  - measure: difference_of_mv_accepted_vs_forecast_alipay 
    type: number
    sql: (${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted_alipay} )
    
  - measure: difference_of_mv_accepted_vs_forecast_fate 
    type: number
    sql: (${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted_fate} )
    
  - measure: difference_of_mv_accepted_vs_forecast_us 
    type: number
    sql: (${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted_us} )    

  - measure: difference_of_mv_accepted_vs_forecast_percentage_alipay 
    type: number
    sql: ((${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted_alipay} ) / (NULLIFZERO(${forecasted_mv_accepted_alipay}))) * 100
    value_format: '0.00\%'
    
  - measure: difference_of_mv_accepted_vs_forecast_percentage_fate 
    type: number
    sql: ((${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted_fate} ) / (NULLIFZERO(${forecasted_mv_accepted_fate}))) * 100
    value_format: '0.00\%'
    
  - measure: difference_of_mv_accepted_vs_forecast_percentage_us 
    type: number
    sql: ((${actuals_historical.total_mv_accepted_actual} - ${forecasted_mv_accepted_us} ) / (NULLIFZERO(${forecasted_mv_accepted_us}))) * 100
    value_format: '0.00\%'    
    
  - measure: difference_of_mv_shipped_vs_forecast_alipay 
    type: number
    sql: (${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped_alipay})

  - measure: difference_of_mv_shipped_vs_forecast_fate 
    type: number
    sql: (${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped_fate})  
    
  - measure: difference_of_mv_shipped_vs_forecast_us 
    type: number
    sql: (${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped_us})      
    
  - measure: difference_of_mv_shipped_vs_forecast_percentage_alipay 
    type: number
    sql: ((${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped_us}) / (NULLIFZERO(${forecasted_mv_shipped_us}))) * 100
    value_format: '0.00\%'

  - measure: difference_of_mv_shipped_vs_forecast_percentage_fate 
    type: number
    sql: ((${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped_fate}) / (NULLIFZERO(${forecasted_mv_shipped_fate}))) * 100
    value_format: '0.00\%'

  - measure: difference_of_mv_shipped_vs_forecast_percentage_us 
    type: number
    sql: ((${actuals_historical.total_net_mv_shipped_actual} - ${forecasted_mv_shipped_us}) / (NULLIFZERO(${forecasted_mv_shipped_us}))) * 100
    value_format: '0.00\%'
    


