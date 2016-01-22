- view: customer_fact_1
  sql_table_name: DEV.CUSTOMER_FACT_1
  fields:

  - dimension: accepted_order_count_l365
    type: int
    sql: ${TABLE}.ACCEPTED_ORDER_COUNT_L365

  - dimension: accepted_order_count_lifetime
    type: int
    sql: ${TABLE}.ACCEPTED_ORDER_COUNT_LIFETIME

  - dimension: aov_gbp_accepted_l365
    type: number
    sql: ${TABLE}.AOV_GBP_ACCEPTED_L365

  - dimension: aov_gbp_accepted_lifetime
    type: number
    sql: ${TABLE}.AOV_GBP_ACCEPTED_LIFETIME

  - dimension: aov_usd_accepted_l365
    type: number
    sql: ${TABLE}.AOV_USD_ACCEPTED_L365

  - dimension: aov_usd_accepted_lifetime
    type: number
    sql: ${TABLE}.AOV_USD_ACCEPTED_LIFETIME

  - dimension: aur_gbp_accepted_l365
    type: number
    sql: ${TABLE}.AUR_GBP_ACCEPTED_L365

  - dimension: aur_gbp_accepted_lifetime
    type: number
    sql: ${TABLE}.AUR_GBP_ACCEPTED_LIFETIME

  - dimension: aur_usd_accepted_l365
    type: number
    sql: ${TABLE}.AUR_USD_ACCEPTED_L365

  - dimension: aur_usd_accepted_lifetime
    type: number
    sql: ${TABLE}.AUR_USD_ACCEPTED_LIFETIME

  - dimension: cancelled_order_count_l365
    type: int
    sql: ${TABLE}.CANCELLED_ORDER_COUNT_L365

  - dimension: cancelled_order_count_lifetime
    type: int
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

  - dimension: customer_email
    type: string
    sql: ${TABLE}.CUSTOMER_EMAIL

  - dimension: customer_first_name
    type: string
    sql: ${TABLE}.CUSTOMER_FIRST_NAME

  - dimension: customer_key
    type: number
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
    type: string
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

  - dimension: first_day_accepted_order_count
    type: int
    sql: ${TABLE}.FIRST_DAY_ACCEPTED_ORDER_COUNT

  - dimension: first_day_number_merchant_shopped
    type: int
    sql: ${TABLE}.FIRST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: first_shipping_address_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_ADDRESS_KEY

  - dimension: first_shipping_country_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_COUNTRY_KEY

  - dimension: gmv_gbp_accepted_l365
    type: number
    sql: ${TABLE}.GMV_GBP_ACCEPTED_L365

  - dimension: gmv_gbp_accepted_lifetime
    type: number
    sql: ${TABLE}.GMV_GBP_ACCEPTED_LIFETIME

  - dimension: gmv_usd_accepted_l365
    type: number
    sql: ${TABLE}.GMV_USD_ACCEPTED_L365

  - dimension: gmv_usd_accepted_lifetime
    type: number
    sql: ${TABLE}.GMV_USD_ACCEPTED_LIFETIME

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

  - dimension: last_day_accepted_order_count
    type: int
    sql: ${TABLE}.LAST_DAY_ACCEPTED_ORDER_COUNT

  - dimension: last_day_number_merchant_shopped
    type: int
    sql: ${TABLE}.LAST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: last_shipping_address_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_ADDRESS_KEY

  - dimension: last_shipping_country_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_COUNTRY_KEY

  - dimension: mv_gbp_accepted_l365
    type: number
    sql: ${TABLE}.MV_GBP_ACCEPTED_L365

  - dimension: mv_gbp_accepted_lifetime
    type: number
    sql: ${TABLE}.MV_GBP_ACCEPTED_LIFETIME

  - dimension: mv_usd_accepted_l365
    type: number
    sql: ${TABLE}.MV_USD_ACCEPTED_L365

  - dimension: mv_usd_accepted_lifetime
    type: number
    sql: ${TABLE}.MV_USD_ACCEPTED_LIFETIME

  - dimension: num_item_accepted_uk_merch_l365
    type: int
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_UK_MERCH_L365

  - dimension: num_item_accepted_uk_merch_lifetime
    type: int
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_UK_MERCH_LIFETIME

  - dimension: num_item_accepted_us_merch_l365
    type: int
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_US_MERCH_L365

  - dimension: num_item_accepted_us_merch_lifetime
    type: int
    sql: ${TABLE}.NUM_ITEM_ACCEPTED_US_MERCH_LIFETIME

  - dimension: num_order_accepted_uk_merch_l365
    type: int
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_UK_MERCH_L365

  - dimension: num_order_accepted_uk_merch_lifetime
    type: int
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_UK_MERCH_LIFETIME

  - dimension: num_order_accepted_us_merch_l365
    type: int
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_US_MERCH_L365

  - dimension: num_order_accepted_us_merch_lifetime
    type: int
    sql: ${TABLE}.NUM_ORDER_ACCEPTED_US_MERCH_LIFETIME

  - dimension: number_merchant_shopped_l365
    type: int
    sql: ${TABLE}.NUMBER_MERCHANT_SHOPPED_L365

  - dimension: number_merchant_shopped_lifetime
    type: int
    sql: ${TABLE}.NUMBER_MERCHANT_SHOPPED_LIFETIME

  - dimension: opt_in_bf_date_key_first
    type: number
    sql: ${TABLE}.OPT_IN_BF_DATE_KEY_FIRST

  - dimension: opt_in_bf_date_key_last
    type: number
    sql: ${TABLE}.OPT_IN_BF_DATE_KEY_LAST

  - dimension: rejected_order_count_l365
    type: int
    sql: ${TABLE}.REJECTED_ORDER_COUNT_L365

  - dimension: rejected_order_count_lifetime
    type: int
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

  - dimension: submitted_order_count_l365
    type: int
    sql: ${TABLE}.SUBMITTED_ORDER_COUNT_L365

  - dimension: submitted_order_count_lifetime
    type: int
    sql: ${TABLE}.SUBMITTED_ORDER_COUNT_LIFETIME

  - measure: count
    type: count
    drill_fields: [customer_last_name, customer_first_name]

