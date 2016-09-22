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

  - dimension: is_mobile
    label: 'Is Mobile'
    type: yesno
    sql: ${TABLE}.IS_MOBILE = 1

  - dimension: device_name
    label: 'Device Name'
    type: string
    sql: ${TABLE}.DEVICE_NAME
    
  - dimension: device_form_factor
    label: 'Device Type'
    type: string
    sql: ${TABLE}.DEVICE_FORM_FACTOR
    
  - dimension: parcel_protection_enabled
    label: 'Parcel Protection Enabled'
    type: yesno
    sql: ${TABLE}.PARCEL_PROTECTION_ENABLED = 1

  - measure: count_rows
    label: 'Count of Records'
    type: count 
    
  - measure: count_experiments
    label: 'Count of Experiments'
    type: count_distinct     
    sql: ${experiment_id}

    



