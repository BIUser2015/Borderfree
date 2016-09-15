- view: user_accounts
  sql_table_name: DW.USER_ACCOUNTS
  fields:

  - dimension: user_accountid
    primary_key: true
    type: string
    sql: ${TABLE}.USER_ACCOUNTID

  - dimension: account_country
    type: string
    sql: ${TABLE}.ACCOUNT_COUNTRY

  - dimension_group: account_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ACCOUNT_CREATED_DATE

  - dimension: active_flag
    type: number
    sql: ${TABLE}.ACTIVE_FLAG

  - dimension: email
    type: string
    sql: ${TABLE}.EMAIL

  - dimension: email_optin
    type: number
    sql: ${TABLE}.EMAIL_OPTIN

  - dimension: first_name
    type: string
    sql: ${TABLE}.FIRST_NAME

  - dimension: last_name
    type: string
    sql: ${TABLE}.LAST_NAME

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_UPDATED_DATE

  - dimension: shipping_country_code
    type: string
    sql: ${TABLE}.SHIPPING_COUNTRY_CODE

  - dimension: sms_optin
    type: number
    sql: ${TABLE}.SMS_OPTIN

  - dimension: source
    type: string
    sql: ${TABLE}."SOURCE"

  - dimension: subscription_type
    type: string
    sql: ${TABLE}.SUBSCRIPTION_TYPE

  - dimension: test_flag
    type: number
    sql: ${TABLE}.TEST_FLAG

  - dimension: language
    type: string
    sql: ${TABLE}.LANGUAGE
    
  - dimension: CATEGORIES
    type: string
    sql: ${TABLE}.CATEGORIES
    
  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - user_accountid
    - last_name
    - first_name
    - order_fact.count
    - stg_order_fact.count
    - user_accounts_stg.count

