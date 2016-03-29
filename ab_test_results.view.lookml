- view: ab_test_results
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
    type: string
    sql: ${TABLE}.PROMO_CODE

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UPDATED_DATE

  - dimension: variation
    type: string
    sql: ${TABLE}.VARIATION



