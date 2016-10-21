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

  # ---- dimension: subscription_type
  # ---  type: string
  # ---  sql: ${TABLE}.SUBSCRIPTION_TYPE

  - dimension: test_flag
    type: number
    sql: ${TABLE}.TEST_FLAG

  - dimension: language
    type: string
    sql: ${TABLE}.LANGUAGE
    
  - dimension: categories_list
    type: string
    sql: ${TABLE}.CATEGORIES
    
  - dimension: gender
    type: string
    sql: ${TABLE}.GENDER
  
  # --- dimension: category
  # --  sql:
  # --    CASE
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Men''s Big & Tall%' THEN 'Men''s Big & Tall'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Women''s Shoes%' THEN 'Women''s Shoes'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Activewear%' THEN 'Activewear'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Luggage & Travel Accessories%' THEN 'Luggage & Travel Accessories'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Women''s Apparel%' THEN 'Women''s Apparel'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Women''s Plus-size Clothing%' THEN 'Women''s Plus-size Clothing'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Maternity%' THEN 'Maternity'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Men''s Apparel & Shoes%' THEN 'Men''s Apparel & Shoes'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Baby & Kids%' THEN 'Baby & Kids'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Home%' THEN 'Home'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Intimates%' THEN 'Intimates'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Sports & Hobbies%' THEN 'Sports & Hobbies'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Teens%' THEN 'Teens'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Bridal%' THEN 'Bridal'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Handbags%' THEN 'Handbags'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Health & Beauty%' THEN 'Health & Beauty'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Jewelry & Accessories%' THEN 'Jewelry & Accessories'
  # --      WHEN ${TABLE}.CATEGORIES LIKE '%Gifts & Holiday%' THEN 'Gifts & Holiday'
  # --    END
    
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

