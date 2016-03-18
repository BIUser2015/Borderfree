- view: customer_fact_2
  sql_table_name: DEV.CUSTOMER_FACT_2
  fields:

  - dimension: cohort_merch_id
    type: number
    sql: ${TABLE}.COHORT_MERCH_ID

  - dimension: cohort_year_month
    type: number
    sql: ${TABLE}.COHORT_YEAR_MONTH

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

  - dimension: days_since_last_purchase
    type: number
    sql: ${TABLE}.DAYS_SINCE_LAST_PURCHASE

  - dimension: email_domain
    type: string
    sql: ${TABLE}.EMAIL_DOMAIN

  - dimension: first_bf_accepted_date_key
    type: number
    sql: ${TABLE}.FIRST_BF_ACCEPTED_DATE_KEY

  - dimension: first_bf_accepted_order_id
    type: string
    sql: ${TABLE}.FIRST_BF_ACCEPTED_ORDER_ID

  - dimension: first_billing_address_key
    type: number
    sql: ${TABLE}.FIRST_BILLING_ADDRESS_KEY

  - dimension: first_billing_country_key
    type: number
    sql: ${TABLE}.FIRST_BILLING_COUNTRY_KEY

  - dimension: first_day_accepted_order_count
    type: number
    sql: ${TABLE}.FIRST_DAY_ACCEPTED_ORDER_COUNT

  - dimension: first_day_number_merchant_shopped
    type: number
    sql: ${TABLE}.FIRST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: first_opt_in_bf_date_key
    type: number
    sql: ${TABLE}.FIRST_OPT_IN_BF_DATE_KEY

  - dimension: first_shipping_address_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_ADDRESS_KEY

  - dimension: first_shipping_country_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_COUNTRY_KEY

  - dimension: has_ever_opted_in_bf_yn
    type: string
    sql: ${TABLE}.HAS_EVER_OPTED_IN_BF_YN

  - dimension: l365_accepted_order_count
    type: number
    sql: ${TABLE}.L365_ACCEPTED_ORDER_COUNT

  - dimension: l365_aov_converted_usd_accepted
    type: number
    sql: ${TABLE}.L365_AOV_CONVERTED_USD_ACCEPTED

  - dimension: l365_aov_eur_accepted
    type: number
    sql: ${TABLE}.L365_AOV_EUR_ACCEPTED

  - dimension: l365_aov_gbp_accepted
    type: number
    sql: ${TABLE}.L365_AOV_GBP_ACCEPTED

  - dimension: l365_aov_usd_accepted
    type: number
    sql: ${TABLE}.L365_AOV_USD_ACCEPTED

  - dimension: l365_aur_converted_usd_accepted
    type: number
    sql: ${TABLE}.L365_AUR_CONVERTED_USD_ACCEPTED

  - dimension: l365_aur_eur_accepted
    type: number
    sql: ${TABLE}.L365_AUR_EUR_ACCEPTED

  - dimension: l365_aur_gbp_accepted
    type: number
    sql: ${TABLE}.L365_AUR_GBP_ACCEPTED

  - dimension: l365_aur_usd_accepted
    type: number
    sql: ${TABLE}.L365_AUR_USD_ACCEPTED

  - dimension: l365_cancelled_order_count
    type: number
    sql: ${TABLE}.L365_CANCELLED_ORDER_COUNT

  - dimension: l365_customer_status
    type: string
    sql: ${TABLE}.L365_CUSTOMER_STATUS

  - dimension: l365_gmv_converted_usd_accepted
    type: number
    sql: ${TABLE}.L365_GMV_CONVERTED_USD_ACCEPTED

  - dimension: l365_gmv_eur_accepted
    type: number
    sql: ${TABLE}.L365_GMV_EUR_ACCEPTED

  - dimension: l365_gmv_gbp_accepted
    type: number
    sql: ${TABLE}.L365_GMV_GBP_ACCEPTED

  - dimension: l365_gmv_usd_accepted
    type: number
    sql: ${TABLE}.L365_GMV_USD_ACCEPTED

  - dimension: l365_mv_converted_usd_accepted
    type: number
    sql: ${TABLE}.L365_MV_CONVERTED_USD_ACCEPTED

  - dimension: l365_mv_eur_accepted
    type: number
    sql: ${TABLE}.L365_MV_EUR_ACCEPTED

  - dimension: l365_mv_gbp_accepted
    type: number
    sql: ${TABLE}.L365_MV_GBP_ACCEPTED

  - dimension: l365_mv_usd_accepted
    type: number
    sql: ${TABLE}.L365_MV_USD_ACCEPTED

  - dimension: l365_num_item_accepted
    type: number
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED

  - dimension: l365_num_item_accepted_eu_merch
    type: number
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_EU_MERCH

  - dimension: l365_num_item_accepted_uk_merch
    type: number
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_UK_MERCH

  - dimension: l365_num_item_accepted_us_merch
    type: number
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_US_MERCH

  - dimension: l365_num_order_accepted
    type: number
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED

  - dimension: l365_num_order_accepted_eu_merch
    type: number
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_EU_MERCH

  - dimension: l365_num_order_accepted_uk_merch
    type: number
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_UK_MERCH

  - dimension: l365_num_order_accepted_us_merch
    type: number
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_US_MERCH

  - dimension: l365_number_merchant_shopped
    type: number
    sql: ${TABLE}.L365_NUMBER_MERCHANT_SHOPPED

  - dimension: l365_rejected_order_count
    type: number
    sql: ${TABLE}.L365_REJECTED_ORDER_COUNT

  - dimension: l365_shopped_from_merch_entity
    type: string
    sql: ${TABLE}.L365_SHOPPED_FROM_MERCH_ENTITY

  - dimension: l365_submitted_order_count
    type: number
    sql: ${TABLE}.L365_SUBMITTED_ORDER_COUNT

  - dimension: last_bf_accepted_date_key
    type: number
    sql: ${TABLE}.LAST_BF_ACCEPTED_DATE_KEY

  - dimension: last_bf_accepted_order_id
    type: string
    sql: ${TABLE}.LAST_BF_ACCEPTED_ORDER_ID

  - dimension: last_billing_address_key
    type: number
    sql: ${TABLE}.LAST_BILLING_ADDRESS_KEY

  - dimension: last_billing_country_key
    type: number
    sql: ${TABLE}.LAST_BILLING_COUNTRY_KEY

  - dimension: last_day_accepted_order_count
    type: number
    sql: ${TABLE}.LAST_DAY_ACCEPTED_ORDER_COUNT

  - dimension: last_day_number_merchant_shopped
    type: number
    sql: ${TABLE}.LAST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: last_opt_in_bf_date_key
    type: number
    sql: ${TABLE}.LAST_OPT_IN_BF_DATE_KEY

  - dimension: last_shipping_address_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_ADDRESS_KEY

  - dimension: last_shipping_country_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_COUNTRY_KEY

  - dimension: lifetime_accepted_order_count
    type: number
    sql: ${TABLE}.LIFETIME_ACCEPTED_ORDER_COUNT

  - dimension: lifetime_aov_converted_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AOV_CONVERTED_USD_ACCEPTED

  - dimension: lifetime_aov_eur_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AOV_EUR_ACCEPTED

  - dimension: lifetime_aov_gbp_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AOV_GBP_ACCEPTED

  - dimension: lifetime_aov_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AOV_USD_ACCEPTED

  - dimension: lifetime_aur_converted_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AUR_CONVERTED_USD_ACCEPTED

  - dimension: lifetime_aur_eur_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AUR_EUR_ACCEPTED

  - dimension: lifetime_aur_gbp_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AUR_GBP_ACCEPTED

  - dimension: lifetime_aur_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_AUR_USD_ACCEPTED

  - dimension: lifetime_cancelled_order_count
    type: number
    sql: ${TABLE}.LIFETIME_CANCELLED_ORDER_COUNT

  - dimension: lifetime_customer_status
    type: string
    sql: ${TABLE}.LIFETIME_CUSTOMER_STATUS

  - dimension: lifetime_gmv_converted_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_GMV_CONVERTED_USD_ACCEPTED

  - dimension: lifetime_gmv_eur_accepted
    type: number
    sql: ${TABLE}.LIFETIME_GMV_EUR_ACCEPTED

  - dimension: lifetime_gmv_gbp_accepted
    type: number
    sql: ${TABLE}.LIFETIME_GMV_GBP_ACCEPTED

  - dimension: lifetime_gmv_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_GMV_USD_ACCEPTED

  - dimension: lifetime_mv_converted_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_MV_CONVERTED_USD_ACCEPTED

  - dimension: lifetime_mv_eur_accepted
    type: number
    sql: ${TABLE}.LIFETIME_MV_EUR_ACCEPTED

  - dimension: lifetime_mv_gbp_accepted
    type: number
    sql: ${TABLE}.LIFETIME_MV_GBP_ACCEPTED

  - dimension: lifetime_mv_usd_accepted
    type: number
    sql: ${TABLE}.LIFETIME_MV_USD_ACCEPTED

  - dimension: lifetime_num_item_accepted
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED

  - dimension: lifetime_num_item_accepted_eu_merch
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_EU_MERCH

  - dimension: lifetime_num_item_accepted_uk_merch
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_UK_MERCH

  - dimension: lifetime_num_item_accepted_us_merch
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_US_MERCH

  - dimension: lifetime_num_order_accepted
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED

  - dimension: lifetime_num_order_accepted_eu_merch
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_EU_MERCH

  - dimension: lifetime_num_order_accepted_uk_merch
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_UK_MERCH

  - dimension: lifetime_num_order_accepted_us_merch
    type: number
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_US_MERCH

  - dimension: lifetime_number_merchant_shopped
    type: number
    sql: ${TABLE}.LIFETIME_NUMBER_MERCHANT_SHOPPED

  - dimension: lifetime_rejected_order_count
    type: number
    sql: ${TABLE}.LIFETIME_REJECTED_ORDER_COUNT

  - dimension: lifetime_shopped_from_merch_entity
    type: string
    sql: ${TABLE}.LIFETIME_SHOPPED_FROM_MERCH_ENTITY

  - dimension: lifetime_submitted_order_count
    type: number
    sql: ${TABLE}.LIFETIME_SUBMITTED_ORDER_COUNT

  - dimension_group: run
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_time

  - measure: count
    type: count
    drill_fields: [customer_last_name, customer_first_name]

