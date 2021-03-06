- view: actuals_historical
  sql_table_name: LOOKER.ACTUALS_HISTORICAL
  fields:

  - dimension: actual_id
    primary_key: true
    type: number
    sql: ${TABLE}.ACTUAL_ID

  - dimension: financial_entity_name
    sql: ${TABLE}.FINANCIAL_ENTITY_NAME

  - dimension: merch_id
    type: number
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: mv_accepted_actual
    type: number
    sql: ${TABLE}.MV_ACCEPTED_ACTUAL

  - dimension: net_mv_shipped_actual
    type: number
    sql: ${TABLE}.NET_MV_SHIPPED_ACTUAL

  - dimension: orders_cancelled
    type: number
    sql: ${TABLE}.ORDERS_CANCELLED

  - dimension: parcels_shipped_actual
    type: number
    sql: ${TABLE}.PARCELS_SHIPPED_ACTUAL

  - dimension: reporting_date
    type: number
    sql: ${TABLE}.REPORTING_DATE


  - dimension: reporting_group
    sql: ${TABLE}.REPORTING_GROUP

  - measure: count
    type: count
    drill_fields: [merch_name, financial_entity_name]
    
  - measure: total_mv_accepted_actual
    filter: 
      calendar_dim.current_year: YES     
    type: sum
    sql: ${mv_accepted_actual}
    
  - measure: total_mv_accepted_actual_us
    filter: 
      calendar_dim.current_year: YES
      financial_entity_name: BF-USA
    type: sum
    sql: ${mv_accepted_actual}
    
  - measure: total_mv_accepted_actual_fate
    filter: 
      calendar_dim.current_year: YES
      financial_entity_name: BF-IRL
    type: sum
    sql: ${mv_accepted_actual}    
    
  - measure: total_mv_accepted_actual_fate_converted
    type: number
    sql: (${total_mv_accepted_actual_fate} * ${dashboard_currency_conversion.convert_rate} )
    
  - measure: total_mv_accepted_both_entities_usd
    type: number
    sql: (${total_mv_accepted_actual_us} + ${total_mv_accepted_actual_fate_converted} )      
    
  - measure: total_net_mv_shipped_actual
    type: sum
    filter: 
      calendar_dim.current_year: YES     
    sql: ${net_mv_shipped_actual}
    
  - measure: total_net_mv_shipped_actual_us
    filter: 
      calendar_dim.current_year: YES
      financial_entity_name: BF-USA
    type: sum
    sql: ${net_mv_shipped_actual}    
    
  - measure: total_net_mv_shipped_actual_fate
    filter: 
      calendar_dim.current_year: YES
      financial_entity_name: BF-IRL
    type: sum
    sql: ${net_mv_shipped_actual} 
    
  - measure: total_mv_shipped_actual_fate_converted
    type: number
    sql: (${total_net_mv_shipped_actual_fate} * ${dashboard_currency_conversion.convert_rate} )
    
  - measure: total_mv_shipped_both_entities_usd
    type: number
    sql: (${total_net_mv_shipped_actual_us} + ${total_mv_shipped_actual_fate_converted} )      
    
  - measure: difference_of_mv_accepted_vs_previous_year
    type: number
    sql: (( (NULLIFZERO${total_mv_accepted_actual}) - (NULLIFZERO${total_mv_accepted_actual_previous_year})) / (NULLIFZERO(${total_mv_accepted_actual_previous_year}))) * 100
    value_format: '0.00\%' 
    
  - measure: difference_of_mv_shipped_vs_previous_year
    type: number
    sql: (((NULLIFZERO${total_net_mv_shipped_actual}) - (NULLIFZERO${total_net_mv_shipped_actual_previous_year}) ) / (NULLIFZERO(${total_net_mv_shipped_actual_previous_year}))) * 100
    value_format: '0.00\%'  
    
  - measure: total_mv_accepted_actual_previous_year
    type: sum
    filter: 
      calendar_dim.previous_year: YES 
    sql: ${mv_accepted_actual}   
    
  - measure: total_net_mv_shipped_actual_previous_year
    type: sum
    filter: 
      calendar_dim.previous_year: YES 
    sql: ${net_mv_shipped_actual}    
  
  - measure: total_orders_cancelled
    label: Orders Cancelled Current Year 
    type: sum
    filter: 
      calendar_dim.current_year: YES
    sql: ${orders_cancelled}

  - measure: total_parcels_shipped_actual
    label: Parcels Shipped Current Year
    filter: 
      calendar_dim.current_year: YES
    type: sum
    sql: ${parcels_shipped_actual}
  

