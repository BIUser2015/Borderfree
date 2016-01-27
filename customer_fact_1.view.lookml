- view: customer_fact_1
  sql_table_name: DEV.CUSTOMER_FACT_1
  fields:

  - measure: accepted_order_count_l365
    type: sum
    sql: ${TABLE}.ACCEPTED_ORDER_COUNT_L365

  - measure: accepted_order_count_lifetime
    type: sum
    sql: ${TABLE}.ACCEPTED_ORDER_COUNT_LIFETIME
    
  - measure: aov_gbp_accepted_l365
    type: avg
    sql: ${TABLE}.AOV_GBP_ACCEPTED_L365
    
  - measure: aov_gbp_accepted_lifetime
    type: avg
    sql: ${TABLE}.AOV_GBP_ACCEPTED_LIFETIME
    
  - measure: aov_usd_accepted_l365
    type: avg
    sql: ${TABLE}.AOV_USD_ACCEPTED_L365
    
  - measure: aov_usd_accepted_lifetime
    type: avg
    sql: ${TABLE}.AOV_USD_ACCEPTED_LIFETIME
    
  - measure: aur_gbp_accepted_l365
    type: avg
    sql: ${TABLE}.AUR_GBP_ACCEPTED_L365
    
  - measure: aur_gbp_accepted_lifetime
    type: avg
    sql: ${TABLE}.AUR_GBP_ACCEPTED_LIFETIME
    
  - measure: aur_usd_accepted_l365
    type: avg
    sql: ${TABLE}.AUR_USD_ACCEPTED_L365
    
  - measure: aur_usd_accepted_lifetime
    type: avg
    sql: ${TABLE}.AUR_USD_ACCEPTED_LIFETIME
    
  - measure: cancelled_order_count_l365
    type: sum
    sql: ${TABLE}.CANCELLED_ORDER_COUNT_L365

  - measure: cancelled_order_count_lifetime
    type: sum
    sql: ${TABLE}.CANCELLED_ORDER_COUNT_LIFETIME

  - dimension: cohort_merch_id
    type: int
    sql: ${TABLE}.COHORT_MERCH_ID

  - dimension: cohort_year_month
    type: string
    sql: ${TABLE}.COHORT_YEAR_MONTH

  - dimension_group: cust_dim_etl_inserted
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CUST_DIM_ETL_INSERTED

  - dimension_group: cust_dim_etl_updated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CUST_DIM_ETL_UPDATED

  - dimension: customer_first_name
    type: string
    sql: ${TABLE}.CUSTOMER_FIRST_NAME

  - dimension: customer_key
    type: number
    primary_key: true
    sql: ${TABLE}.CUSTOMER_KEY

  - dimension: customer_last_name
    type: string
    sql: ${TABLE}.CUSTOMER_LAST_NAME

  - dimension: customer_middle_initials
    type: string
    sql: ${TABLE}.CUSTOMER_MIDDLE_INITIALS

  - dimension: customer_status_l365
    type: string
    sql: ${TABLE}.CUSTOMER_STATUS_L365

  - dimension: customer_status_lifetime
    type: string
    sql: ${TABLE}.CUSTOMER_STATUS_LIFETIME

  - dimension: days_since_last_purchase
    type: number
    sql: ${TABLE}.DAYS_SINCE_LAST_PURCHASE

  - dimension: email_domain
    type: string
    sql: ${TABLE}.EMAIL_DOMAIN

  - dimension: first_bf_accepted_date_key
    type: number
    sql: ${TABLE}.FIRST_BF_ACCEPTED_DATE_KEY

  - dimension: first_bf_accepted_order
    type: string
    sql: ${TABLE}.FIRST_BF_ACCEPTED_ORDER

  - dimension: first_billing_address_key
    type: number
    sql: ${TABLE}.FIRST_BILLING_ADDRESS_KEY

  - dimension: first_billing_country_key
    type: number
    sql: ${TABLE}.FIRST_BILLING_COUNTRY_KEY

  - measure: first_day_accepted_order_count
    type: avg
    sql: ${TABLE}.FIRST_DAY_ACCEPTED_ORDER_COUNT

  - measure: first_day_number_merchant_shopped
    type: avg
    sql: ${TABLE}.FIRST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: first_shipping_address_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_ADDRESS_KEY

  - dimension: first_shipping_country_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_COUNTRY_KEY

  - measure: gmv_gbp_accepted_l365
    type: sum
    sql: ${TABLE}.GMV_GBP_ACCEPTED_L365
    value_format: '#,##0.00'

  - measure: gmv_gbp_accepted_lifetime
    type: sum
    sql: ${TABLE}.GMV_GBP_ACCEPTED_LIFETIME
    value_format: '#,##0.00'

  - measure: gmv_usd_accepted_l365
    type: sum
    sql: ${TABLE}.GMV_USD_ACCEPTED_L365
    value_format: '#,##0.00'

  - measure: gmv_usd_accepted_lifetime
    type: sum
    sql: ${TABLE}.GMV_USD_ACCEPTED_LIFETIME
    value_format: '#,##0.00'

  - dimension: has_ever_opted_in_bf_yn
    type: string
    sql: ${TABLE}.HAS_EVER_OPTED_IN_BF_YN

  - dimension: last_bf_accepted_date_key
    type: number
    sql: ${TABLE}.LAST_BF_ACCEPTED_DATE_KEY

  - dimension: last_bf_accepted_order
    type: string
    sql: ${TABLE}.LAST_BF_ACCEPTED_ORDER

  - dimension: last_billing_address_key
    type: number
    sql: ${TABLE}.LAST_BILLING_ADDRESS_KEY

  - dimension: last_billing_country_key
    type: number
    sql: ${TABLE}.LAST_BILLING_COUNTRY_KEY

  - measure: last_day_accepted_order_count
    type: avg
    sql: ${TABLE}.LAST_DAY_ACCEPTED_ORDER_COUNT

  - measure: last_day_number_merchant_shopped
    type: avg
    sql: ${TABLE}.LAST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: last_shipping_address_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_ADDRESS_KEY

  - dimension: last_shipping_country_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_COUNTRY_KEY

  - measure: mv_gbp_accepted_l365
    type: sum
    sql: ${TABLE}.MV_GBP_ACCEPTED_L365
    value_format: '#,##0.00'

  - measure: mv_gbp_accepted_lifetime
    type: sum
    sql: ${TABLE}.MV_GBP_ACCEPTED_LIFETIME
    value_format: '#,##0.00'

  - measure: mv_usd_accepted_l365
    type: sum
    sql: ${TABLE}.MV_USD_ACCEPTED_L365
    value_format: '#,##0.00'

  - measure: mv_usd_accepted_lifetime
    type: sum
    sql: ${TABLE}.MV_USD_ACCEPTED_LIFETIME
    value_format: '#,##0.00'

  - measure: num_item_accepted_uk_merch_l365
    type: sum
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_UK_MERCH_L365

  - measure: num_item_accepted_uk_merch_lifetime
    type: sum
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_UK_MERCH_LIFETIME

  - measure: num_item_accepted_us_merch_l365
    type: sum
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_US_MERCH_L365

  - measure: num_item_accepted_us_merch_lifetime
    type: sum
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_US_MERCH_LIFETIME

  - measure: num_order_accepted_uk_merch_l365
    type: sum
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_UK_MERCH_L365

  - measure: num_order_accepted_uk_merch_lifetime
    type: sum
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_UK_MERCH_LIFETIME

  - measure: num_order_accepted_us_merch_l365
    type: sum
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_US_MERCH_L365

  - measure: num_order_accepted_us_merch_lifetime
    type: sum
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_US_MERCH_LIFETIME

  - measure: number_merchant_shopped_l365
    type: avg
    sql: ${TABLE}.NUMBER_MERCHANT_SHOPPED_L365

  - measure: number_merchant_shopped_lifetime
    type: avg
    sql: ${TABLE}.NUMBER_MERCHANT_SHOPPED_LIFETIME

  - dimension: opt_in_bf_date_key_first
    type: number
    sql: ${TABLE}.OPT_IN_BF_DATE_KEY_FIRST

  - dimension: opt_in_bf_date_key_last
    type: number
    sql: ${TABLE}.OPT_IN_BF_DATE_KEY_LAST

  - measure: rejected_order_count_l365
    type: sum
    sql: ${TABLE}.REJECTED_ORDER_COUNT_L365

  - measure: rejected_order_count_lifetime
    type: sum
    sql: ${TABLE}.REJECTED_ORDER_COUNT_LIFETIME

  - dimension_group: run
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_time

  - dimension: shopped_from_us_uk_merch_l365
    type: string
    sql: ${TABLE}.SHOPPED_FROM_US_UK_MERCH_L365

  - dimension: shopped_from_us_uk_merch_lifetime
    type: string
    sql: ${TABLE}.SHOPPED_FROM_US_UK_MERCH_LIFETIME

  - measure: submitted_order_count_l365
    type: sum
    sql: ${TABLE}.SUBMITTED_ORDER_COUNT_L365

  - measure: submitted_order_count_lifetime
    type: sum
    sql: ${TABLE}.SUBMITTED_ORDER_COUNT_LIFETIME

  - measure: mv_rank_period
    type: number
    sql: |
      rank() over(order by ${mv_usd_accepted_lifetime} desc) 

  - measure: customer
    type: count
    drill_fields: 
      - customer_key    
      - customer_last_name
      - customer_first_name
      - customer_email
      - has_ever_opted_in_bf_yn
      - cohort_year_month
      - days_since_last_purchase
      - mv_rank_period
      - number_merchant_shopped_lifetime
      - mv_usd_accepted_lifetime
      - accepted_order_count_lifetime
      - aov_usd_accepted_lifetime

  - dimension: customer_email
    type: string
    sql: ${TABLE}.CUSTOMER_EMAIL