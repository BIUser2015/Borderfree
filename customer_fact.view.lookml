- view: customer_fact
  sql_table_name: DEV.CUSTOMER_FACT
  fields:

  - dimension: cohort_merch_id
    type: number
    sql: ${TABLE}.COHORT_MERCH_ID
    hidden: true 

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
    primary_key: true
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
    hidden: true

  - dimension: first_billing_address_key
    type: number
    sql: ${TABLE}.FIRST_BILLING_ADDRESS_KEY
    hidden: true

  - dimension: first_billing_country_key
    type: number
    sql: ${TABLE}.FIRST_BILLING_COUNTRY_KEY
    hidden: true 

  - measure: first_day_accepted_order_count
    type: avg
    sql: ${TABLE}.FIRST_DAY_ACCEPTED_ORDER_COUNT

  - measure: first_day_number_merchant_shopped
    type: avg
    sql: ${TABLE}.FIRST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: first_opt_in_bf_date_key
    type: number
    sql: ${TABLE}.FIRST_OPT_IN_BF_DATE_KEY

  - dimension: first_shipping_address_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_ADDRESS_KEY
    hidden: true

  - dimension: first_shipping_country_key
    type: number
    sql: ${TABLE}.FIRST_SHIPPING_COUNTRY_KEY
    hidden: true

  - dimension: has_ever_opted_in_bf_yn
    type: string
    sql: ${TABLE}.HAS_EVER_OPTED_IN_BF_YN

  - measure: l365_accepted_order_count
    type: sum
    sql: ${TABLE}.L365_ACCEPTED_ORDER_COUNT

  - measure: l365_aov_converted_usd_accepted
    type: avg
    sql: ${TABLE}.L365_AOV_CONVERTED_USD_ACCEPTED
    hidden: true

  - measure: l365_aov_eur_accepted
    type: avg
    sql: ${TABLE}.L365_AOV_EUR_ACCEPTED
    hidden: true

  - measure: l365_aov_gbp_accepted
    type: avg
    sql: ${TABLE}.L365_AOV_GBP_ACCEPTED
    hidden: true

  - measure: l365_aov_usd_accepted
    type: avg
    sql: ${TABLE}.L365_AOV_USD_ACCEPTED
    hidden: true

  - measure: l365_aur_converted_usd_accepted
    type: avg
    sql: ${TABLE}.L365_AUR_CONVERTED_USD_ACCEPTED
    hidden: true

  - measure: l365_aur_eur_accepted
    type: avg
    sql: ${TABLE}.L365_AUR_EUR_ACCEPTED
    hidden: true

  - measure: l365_aur_gbp_accepted
    type: avg
    sql: ${TABLE}.L365_AUR_GBP_ACCEPTED
    hidden: true

  - measure: l365_aur_usd_accepted
    type: avg
    sql: ${TABLE}.L365_AUR_USD_ACCEPTED
    hidden: true

  - measure: l365_cancelled_order_count
    type: sum
    sql: ${TABLE}.L365_CANCELLED_ORDER_COUNT

  - dimension: l365_customer_status
    type: string
    sql: ${TABLE}.L365_CUSTOMER_STATUS

  - measure: l365_gmv_converted_usd_accepted
    type: sum
    sql: ${TABLE}.L365_GMV_CONVERTED_USD_ACCEPTED

  - measure: l365_gmv_eur_accepted
    type: sum
    sql: ${TABLE}.L365_GMV_EUR_ACCEPTED

  - measure: l365_gmv_gbp_accepted
    type: sum
    sql: ${TABLE}.L365_GMV_GBP_ACCEPTED

  - measure: l365_gmv_usd_accepted
    type: sum
    sql: ${TABLE}.L365_GMV_USD_ACCEPTED

  - measure: l365_mv_converted_usd_accepted
    type: sum
    sql: ${TABLE}.L365_MV_CONVERTED_USD_ACCEPTED

  - measure: l365_mv_eur_accepted
    type: sum
    sql: ${TABLE}.L365_MV_EUR_ACCEPTED

  - measure: l365_mv_gbp_accepted
    type: sum
    sql: ${TABLE}.L365_MV_GBP_ACCEPTED

  - measure: l365_mv_usd_accepted
    type: sum
    sql: ${TABLE}.L365_MV_USD_ACCEPTED

  - measure: l365_num_item_accepted
    type: avg
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED
    hidden: true

  - measure: l365_num_item_accepted_eu_merch
    type: avg
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_EU_MERCH
    hidden: true

  - measure: l365_num_item_accepted_uk_merch
    type: avg
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_UK_MERCH
    hidden: true

  - measure: l365_num_item_accepted_us_merch
    type: avg
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_US_MERCH
    hidden: true

  - measure: l365_num_order_accepted
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED

  - measure: l365_num_order_accepted_eu_merch
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_EU_MERCH

  - measure: l365_num_order_accepted_uk_merch
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_UK_MERCH

  - measure: l365_num_order_accepted_us_merch
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_US_MERCH

  - measure: l365_number_merchant_shopped
    type: avg
    sql: ${TABLE}.L365_NUMBER_MERCHANT_SHOPPED

  - measure: l365_rejected_order_count
    type: sum
    sql: ${TABLE}.L365_REJECTED_ORDER_COUNT

  - dimension: l365_shopped_from_merch_entity
    type: string
    sql: ${TABLE}.L365_SHOPPED_FROM_MERCH_ENTITY

  - measure: l365_submitted_order_count
    type: sum
    sql: ${TABLE}.L365_SUBMITTED_ORDER_COUNT

  - dimension: last_bf_accepted_date_key
    type: number
    sql: ${TABLE}.LAST_BF_ACCEPTED_DATE_KEY

  - dimension: last_bf_accepted_order_id
    type: string
    sql: ${TABLE}.LAST_BF_ACCEPTED_ORDER_ID
    hidden: true

  - dimension: last_billing_address_key
    type: number
    sql: ${TABLE}.LAST_BILLING_ADDRESS_KEY
    hidden: true

  - dimension: last_billing_country_key
    type: number
    sql: ${TABLE}.LAST_BILLING_COUNTRY_KEY
    hidden: true

  - measure: last_day_accepted_order_count
    type: avg
    sql: ${TABLE}.LAST_DAY_ACCEPTED_ORDER_COUNT

  - measure: last_day_number_merchant_shopped
    type: avg
    sql: ${TABLE}.LAST_DAY_NUMBER_MERCHANT_SHOPPED

  - dimension: last_opt_in_bf_date_key
    type: number
    sql: ${TABLE}.LAST_OPT_IN_BF_DATE_KEY

  - dimension: last_shipping_address_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_ADDRESS_KEY
    hidden: true

  - dimension: last_shipping_country_key
    type: number
    sql: ${TABLE}.LAST_SHIPPING_COUNTRY_KEY
    hidden: true

  - measure: lifetime_accepted_order_count
    type: sum
    sql: ${TABLE}.LIFETIME_ACCEPTED_ORDER_COUNT

  - measure: lifetime_aov_converted_usd_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_CONVERTED_USD_ACCEPTED

  - measure: lifetime_aov_eur_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_EUR_ACCEPTED

  - measure: lifetime_aov_gbp_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_GBP_ACCEPTED

  - measure: lifetime_aov_usd_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_USD_ACCEPTED

  - measure: lifetime_aur_converted_usd_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_CONVERTED_USD_ACCEPTED

  - measure: lifetime_aur_eur_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_EUR_ACCEPTED

  - measure: lifetime_aur_gbp_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_GBP_ACCEPTED

  - measure: lifetime_aur_usd_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_USD_ACCEPTED

  - measure: lifetime_cancelled_order_count
    type: sum
    sql: ${TABLE}.LIFETIME_CANCELLED_ORDER_COUNT

  - dimension: lifetime_customer_status
    type: string
    sql: ${TABLE}.LIFETIME_CUSTOMER_STATUS

  - measure: lifetime_gmv_converted_usd_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_CONVERTED_USD_ACCEPTED

  - measure: lifetime_gmv_eur_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_EUR_ACCEPTED

  - measure: lifetime_gmv_gbp_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_GBP_ACCEPTED

  - measure: lifetime_gmv_usd_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_USD_ACCEPTED

  - measure: lifetime_mv_converted_usd_accepted
    label: 'test1 sum lifetime_mv_converted_usd_accepted' 
    type: sum
    sql: ${TABLE}.LIFETIME_MV_CONVERTED_USD_ACCEPTED

  - measure: test2_avg_lifetime_mv_converted_usd_accepted
    label: 'test2 avg lifetime_mv_converted_usd_accepted' 
    type: avg
    sql: ${TABLE}.LIFETIME_MV_CONVERTED_USD_ACCEPTED
    
  - measure: lifetime_mv_eur_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_MV_EUR_ACCEPTED

  - measure: lifetime_mv_gbp_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_MV_GBP_ACCEPTED

  - measure: lifetime_mv_usd_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_MV_USD_ACCEPTED

  - measure: lifetime_num_item_accepted
    type: avg
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED

  - measure: lifetime_num_item_accepted_eu_merch
    type: avg
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_EU_MERCH

  - measure: lifetime_num_item_accepted_uk_merch
    type: avg
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_UK_MERCH

  - measure: lifetime_num_item_accepted_us_merch
    type: avg
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_US_MERCH

  - measure: lifetime_num_order_accepted
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED

  - measure: lifetime_num_order_accepted_eu_merch
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_EU_MERCH

  - measure: lifetime_num_order_accepted_uk_merch
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_UK_MERCH

  - measure: lifetime_num_order_accepted_us_merch
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_US_MERCH

  - measure: lifetime_number_merchant_shopped
    type: avg
    sql: ${TABLE}.LIFETIME_NUMBER_MERCHANT_SHOPPED

  - measure: lifetime_rejected_order_count
    type: sum
    sql: ${TABLE}.LIFETIME_REJECTED_ORDER_COUNT

  - dimension: lifetime_shopped_from_merch_entity
    type: string
    sql: ${TABLE}.LIFETIME_SHOPPED_FROM_MERCH_ENTITY

  - measure: lifetime_submitted_order_count
    type: sum
    sql: ${TABLE}.LIFETIME_SUBMITTED_ORDER_COUNT

  - dimension_group: run
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_time
    hidden: true

  - measure: mv_rank_period
    type: number
    sql: |
      rank() over(order by ${lifetime_mv_converted_usd_accepted} desc) 
      
  - measure: customer
    type: count
    drill_fields: 
      - customer_key    
      - customer_last_name
      - customer_first_name
      - customer_email
      - has_ever_opted_in_bf_yn
      - cohort_year_month
      - lifetime_customer_status 
      - days_since_last_purchase
      - mv_rank_period
      - lifetime_number_merchant_shopped 
      - lifetime_mv_converted_usd_accepted
      - lifetime_num_order_accepted
      - lifetime_aov_converted_usd_accepted