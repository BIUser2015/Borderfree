- view: cyberweek
  sql_table_name: LOOKER.CYBERWEEK_HISTORICAL
  fields:

  - dimension: brand
    sql: INITCAP(${TABLE}.BRAND)

  - dimension: category
    sql: INITCAP(${TABLE}.CATEGORY)

  - dimension: checkout_status
    sql: ${TABLE}.CHECKOUT_STATUS

  - dimension: comparison_day
    type: int
    sql: ${TABLE}.COMPARISON_DAY

  - dimension: convert_rate_gbp
    type: number
    sql: ${TABLE}.CONVERT_RATE_GBP

  - dimension: credit_card_type
    sql: INITCAP(${TABLE}.CREDIT_CARD_TYPE)

  - dimension: currency
    sql: ${TABLE}.CURRENCY

  - dimension: financial_entity_name
    sql: ${TABLE}.FINANCIAL_ENTITY_NAME

  - dimension: item_id
    type: int
    sql: ${TABLE}.ITEM_ID

  - dimension: item_mv
    type: number
    sql: ${TABLE}.ITEM_MV

  - dimension: merch_id
    type: int
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: merchant_sku
    sql: ${TABLE}.MERCHANT_SKU

  - dimension: mv_usd
    type: number
    sql: ${TABLE}.MV_USD

  - dimension_group: order_date_full
    type: time
    timeframes: [time, date, week, month, hour, year]
    sql: ${TABLE}.ORDER_DATE_FULL

  - dimension: order_hour
    sql: ${TABLE}.ORDER_HOUR

  - dimension: order_id
    sql: ${TABLE}.ORDER_ID

  - dimension: product_name
    sql: INITCAP (${TABLE}.PRODUCT_NAME)

  - dimension: shipping_country
    sql: ${TABLE}.SHIPPING_COUNTRY
    
  - dimension: current_year
    type: yesno
    sql: year(${TABLE}.order_date_full) = year(sysdate)    

  - dimension: previous_year
    type: yesno
    sql: year(${TABLE}.order_date_full) = year(sysdate)-1    

  - measure: count_of_items
    type: count
    drill_fields: [product_name, financial_entity_name, merch_name]
    
  - measure: count_of_items_current_year
    type: count
    filter: 
     current_year: YES    
    drill_fields: [product_name, financial_entity_name, merch_name]
    
  - measure: count_of_items_previous_year
    type: count
    filter: 
     current_year: YES    
    drill_fields: [product_name, financial_entity_name, merch_name]    

  - measure: total_mv
    type: sum
    sql: ${mv_usd} 
    value_format: '"$"#,###'     
    
  - measure: total_mv_current_year
    type: sum
    filter: 
     current_year: YES
    sql: ${mv_usd} 
    value_format: '"$"#,###'     
    
  - measure: total_mv_previous_year
    type: sum
    filter: 
     previous_year: YES    
    sql: ${mv_usd} 
    value_format: '"$"#,###'     
    
  - measure: count_orders
    type: count_distinct
    sql: ${order_id} 
    
  - measure: count_orders_current_year
    type: count_distinct
    filter: 
     current_year: YES    
    sql: ${order_id}      
    
  - measure: count_orders_previous_year 
    type: count_distinct
    filter: 
     previous_year: YES  
    sql: ${order_id}   
    
  - measure: count_orders_current_year_accepted
    type: count_distinct
    filter: 
     current_year: YES
     checkout_status: "GREEN, CANCELLED"
    sql: ${order_id}   
    
  - measure: acceptance_rate
    type: number
    sql: (${count_orders_current_year_accepted}/${count_orders_current_year}) * 100
    value_format: '0.00\%' 
    
    
    
    
    
    
    
    
