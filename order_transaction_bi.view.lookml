- view: transactions
  sql_table_name: FIN.ORDER_TRANSACTION_BI
  fields:
  
  - dimension: tran_id
    type: number
    primary_key: true 
    sql: ${TABLE}.TRAN_ID  

  - dimension: activity_id
    type: number
    sql: ${TABLE}.ACTIVITY_ID

  - dimension: activity_reason
    sql: ${TABLE}.ACTIVITY_REASON

  - dimension: activity_type
    sql: ${TABLE}.ACTIVITY_TYPE

  - dimension: base_amt
    type: number
    sql: ${TABLE}.BASE_AMT

  - dimension: base_currency
    sql: ${TABLE}.BASE_CURRENCY

  - dimension: cost_owner
    sql: ${TABLE}.COST_OWNER

  - dimension: country_name
    sql: ${TABLE}.COUNTRY_NAME
    
  - dimension: country_groups
    sql_case:
      Canada: ${TABLE}.COUNTRY_NAME = 'Canada'
      UK: ${TABLE}.COUNTRY_NAME = 'United Kingdom'
      Australia: ${TABLE}.COUNTRY_NAME = 'Australia'
      Hong Kong: ${TABLE}.COUNTRY_NAME = 'Hong Kong'
      Other: true        

  - dimension: created_date
    sql: ${TABLE}.CREATED_DATE

  - dimension: currency
    sql: ${TABLE}.CURRENCY

  - dimension: entity_ccy_amt
    type: number
    sql: ${TABLE}.ENTITY_CCY_AMT

  - dimension: expected_amt
    type: number
    sql: ${TABLE}.EXPECTED_AMT

  - dimension: financial_entity_name
    sql: ${TABLE}.FINANCIAL_ENTITY_NAME

  - dimension: linked_tr_expected_amt
    type: number
    sql: ${TABLE}.LINKED_TR_EXPECTED_AMT

  - dimension: linked_tran_id
    type: number
    sql: ${TABLE}.LINKED_TRAN_ID

  - dimension: logistic_state_reason
    sql: ${TABLE}.logistic_state_reason

  - dimension: lp_parcel_id
    sql: ${TABLE}.LP_PARCEL_ID

  - dimension: merch_id
    type: number
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: oh_created_date
    sql: ${TABLE}.OH_CREATED_DATE

  - dimension: oh_created_date_key
    type: number
    sql: ${TABLE}.OH_CREATED_DATE_KEY

  - dimension: oh_credit_card_type
    sql: ${TABLE}.OH_CREDIT_CARD_TYPE

  - dimension: oh_merch_order_id
    sql: ${TABLE}.OH_MERCH_ORDER_ID

  - dimension: order_id
    sql: ${TABLE}.ORDER_ID

  - dimension: ot_date_key
    type: number
    sql: ${TABLE}.OT_DATE_KEY

  - dimension: payment_action_id
    type: number
    sql: ${TABLE}.PAYMENT_ACTION_ID

  - dimension: quote_id
    type: number
    sql: ${TABLE}.QUOTE_ID

  - dimension: rate
    type: number
    sql: ${TABLE}.RATE

  - dimension: reason
    sql: ${TABLE}.REASON

  - dimension: shipping_carrier
    sql: ${TABLE}.SHIPPING_CARRIER

  - dimension: total_value
    type: number
    sql: ${TABLE}.TOTAL_VALUE

  - dimension: total_value_usd
    type: number
    sql: ${TABLE}.TOTAL_VALUE_USD

  - dimension: tran_type
    sql: ${TABLE}.TRAN_TYPE

  - dimension: usd_amt
    type: number
    sql: ${TABLE}.USD_AMT

  - measure: total_value_merchant_ccy
    type: sum 
    sql: ${total_value_usd}

  - measure: mv_current_year
    filter: 
      calendar_dim.current_year: YES 
    type: sum 
    sql: ${transactions.total_value_usd}    
    
  - measure: mv_previous_year
    filter: 
      calendar_dim.previous_year: YES
      calendar_dim.up_to_same_date_in_year: YES
    type: sum 
    sql: ${transactions.total_value_usd}  
    
  - measure: mv_current_quarter
    filter: 
      calendar_dim.current_year: YES 
      calendar_dim.current_quarter: YES
      calendar_dim.up_to_same_date_in_quarter: YES
    type: sum 
    sql: ${transactions.total_value_usd}    
    
  - measure: mv_py_quarter
    filter: 
      calendar_dim.previous_year: YES
      calendar_dim.current_quarter: YES
      calendar_dim.up_to_same_date_in_quarter: YES
    type: sum 
    sql: ${transactions.total_value_usd}
    
  - measure: mv_current_month
    filter:
      calendar_dim.current_year: YES
      calendar_dim.current_quarter: YES
      calendar_dim.current_month: YES 
    type: sum 
    sql: ${transactions.total_value_usd}    
    
  - measure: mv_py_month
    filter:
      calendar_dim.previous_year: YES
      calendar_dim.current_quarter: YES
      calendar_dim.current_month: YES 
      calendar_dim.up_to_same_date_in_month: YES 
    type: sum 
    sql: ${transactions.total_value_usd}        

  - measure: vs_month
    type: number
    sql: (${mv_current_month} - ${mv_py_month} ) 

  - measure: vs_quarter
    type: number
    sql: (${mv_current_quarter} - ${mv_py_quarter} ) 
    
  - measure: vs_year
    type: number
    sql: (${mv_current_year} - ${mv_previous_year} ) 

  - measure: vs_month_percentage
    type: number
    sql: ( (${mv_current_month}-${mv_py_month}) / (${mv_py_month}) ) 
    value_format: '0.00\%'

  - measure: vs_quarter_percentage
    type: number
    sql: ((${mv_current_quarter} - ${mv_py_quarter})/ (${mv_py_quarter}) ) 
    value_format: '0.00\%'
    
  - measure: vs_year_percentage
    type: number
    sql: ((${mv_current_year} - ${mv_previous_year}) / (${mv_previous_year}) )  
    value_format: '0.00\%'        
    
    
    
    
    
    
    
    
    
    
    
    
    