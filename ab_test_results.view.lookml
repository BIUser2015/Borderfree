- view: ab_test_results
  label: 'Optimization Test Results'
  sql_table_name: APP_DATA.AB_TEST_RESULTS
  fields:

  - dimension: order_id
    primary_key: true
    type: string
    sql: ${TABLE}.ORDER_ID
    
  - dimension: experiment_id
    type: string
    sql: ${TABLE}.EXPERIMENT_ID

  - dimension: promo_code
    label: 'Promotion Code'
    description: 'Promotion code recorded in mongoDB'
    type: string
    sql: ${TABLE}.PROMO_CODE

  - dimension_group: updated
    label: 'Record Updated Time'
    description: 'Max record inserted Time'
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UPDATED_DATE

  - dimension: variation
    label: 'Test Variation'
    type: string
    sql: ${TABLE}.VARIATION
    
  - measure: count_rows
    label: 'Count of Records'
    type: count 

    



