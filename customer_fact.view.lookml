- view: customer_fact
  label: 'Customer Level'
  sql_table_name: DEV.CUSTOMER_FACT
  fields:

  - dimension: cohort_merch_id
    type: number
    sql: ${TABLE}.COHORT_MERCH_ID
    hidden: true
    
  - dimension: merch_name
    label: 'Cohort Merchant'
    description: 'the first BF merchant where a customer placed his/her order'
    type: string
    sql: ${TABLE}.COHORT_MERCH_ID = ${merchant_dim.merch_name} and ${merchant_dim.ignore} = 0 and ${merchant_dim.date_to} = '2199-12-31' 

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
    description: 'this metric is refreshed daily and it cannot be applied in historical analysis'  
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
    description: 'this metric should always be calculated on customer level as it returns the number of accepted order placed by a customer in his/her first shopping day'
    type: avg
    sql: ${TABLE}.FIRST_DAY_ACCEPTED_ORDER_COUNT

  - measure: first_day_number_merchant_shopped
    description: 'this metric should always be calculated on customer level as it returns the number of distinct merchant shopped by a customer in his/her first shopping day'
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
    label: 'l365 Accepted Order Count'
    description: 'total number of accepted orders in last 365 days, calculation is refreshed daily'
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
    label: 'l365 Cancelled Order Count'
    description: 'total number of cancelled orders in last 365 days, calculation is refreshed daily'
    type: sum
    sql: ${TABLE}.L365_CANCELLED_ORDER_COUNT

  - dimension: l365_customer_status
    label: 'l365 Customer Status'
    description: 'customer status in last 365 days, calculation is refreshed daily'
    type: string
    sql: ${TABLE}.L365_CUSTOMER_STATUS

  - measure: l365_gmv_converted_usd_accepted
    label: 'l365 Gmv (converted in $USD) accepted'
    description: 'Gross merchant value converted in USD, last 365 days - currently taking implied assumption' 
    type: sum
    sql: ${TABLE}.L365_GMV_CONVERTED_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: l365_gmv_eur_accepted
    label: 'l365 Gmv (in €EUR) accepted'
    description: 'Gross merchant value (merchant pricing CCY in EUR) in last 365 days' 
    type: sum
    sql: ${TABLE}.L365_GMV_EUR_ACCEPTED
    value_format: '"€"#,###'

  - measure: l365_gmv_gbp_accepted
    label: 'l365 Gmv (in £GBP) accepted'
    description: 'Gross merchant value (merchant pricing CCY in GBP) in last 365 days' 
    type: sum
    sql: ${TABLE}.L365_GMV_GBP_ACCEPTED
    value_format: '"£"#,###'

  - measure: l365_gmv_usd_accepted
    label: 'l365 Gmv (in $USD) accepted'
    description: 'Gross merchant value (merchant pricing CCY in USD) in last 365 days' 
    type: sum
    sql: ${TABLE}.L365_GMV_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: l365_mv_converted_usd_accepted
    label: 'l365 Mv (converted in $USD) accepted'
    description: 'Merchant value converted in USD, last 365 days - currently taking implied assumption' 
    type: sum
    sql: ${TABLE}.L365_MV_CONVERTED_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: l365_mv_eur_accepted
    label: 'l365 Mv (in €EUR) accepted'
    description: 'Merchant value (merchant pricing CCY in EUR) in last 365 days' 
    type: sum
    sql: ${TABLE}.L365_MV_EUR_ACCEPTED
    value_format: '"€"#,###'

  - measure: l365_mv_gbp_accepted
    label: 'l365 Mv (in £GBP) accepted'
    description: 'Merchant value (merchant pricing CCY in GBP) in last 365 days' 
    type: sum
    sql: ${TABLE}.L365_MV_GBP_ACCEPTED
    value_format: '"£"#,###'

  - measure: l365_mv_usd_accepted
    label: 'l365 Mv (in $USD) accepted'
    description: 'Merchant value (merchant pricing CCY in USD) in last 365 days' 
    type: sum
    sql: ${TABLE}.L365_MV_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: l365_num_item_accepted
    label: 'l365 Number of Items accepted'
    description: 'total number of items in accepted orders in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED
    
  - measure: l365_num_item_accepted_eu_merch
    label: 'l365 Number of Items (from EU merchant) accepted'
    description: 'total number of items (merchant pricing CCY in EUR) in accepted orders in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_EU_MERCH

  - measure: l365_num_item_accepted_uk_merch
    label: 'l365 Number of Items (from UK merchant) accepted'
    description: 'total number of items (merchant pricing CCY in GBP) in accepted orders in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_UK_MERCH
    
  - measure: l365_num_item_accepted_us_merch
    label: 'l365 Number of Items (from US merchant) accepted'
    description: 'total number of items (merchant pricing CCY in USD) in accepted orders in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ITEM_ACCEPTED_US_MERCH
    
  - measure: l365_num_order_accepted
    label: 'l365 Number of Orders accepted'
    description: 'total number of accepted orders in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED

  - measure: l365_num_order_accepted_eu_merch
    label: 'l365 Number of Orders (from EU merchant) accepted'
    description: 'total number of accepted orders (merchant pricing CCY in EUR) in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_EU_MERCH

  - measure: l365_num_order_accepted_uk_merch
    label: 'l365 Number of Orders (from UK merchant) accepted'
    description: 'total number of accepted orders (merchant pricing CCY in GBP) in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_UK_MERCH

  - measure: l365_num_order_accepted_us_merch
    label: 'l365 Number of Orders (from US merchant) accepted'
    description: 'total number of accepted orders (merchant pricing CCY in USD) in last 365 days'
    type: sum
    sql: ${TABLE}.L365_NUM_ORDER_ACCEPTED_US_MERCH

  - measure: l365_number_merchant_shopped
    label: 'l365 Number of Merchant Shopped'
    description: 'user of this metric should always apply the l365 Customer Stauts dimension to filter customers who have placed accepted orders in last 365 days before running calculation'
    type: avg
    sql: ${TABLE}.L365_NUMBER_MERCHANT_SHOPPED

  - measure: l365_rejected_order_count
    label: 'l365 Rejected Order Count'
    description: 'total number of rejected orders in last 365 days, calculation is refreshed daily'
    type: sum
    sql: ${TABLE}.L365_REJECTED_ORDER_COUNT

  - dimension: l365_shopped_from_merch_entity
    label: 'l365 Customers Segmented by Merchant Entity'
    description: 'customers are segmented by merchant pricing ccy according to the merchants that they shopped from in last 365 days'
    type: string
    sql: ${TABLE}.L365_SHOPPED_FROM_MERCH_ENTITY

  - measure: l365_submitted_order_count
    label: 'l365 Submitted Order Count'
    description: 'total number of submitted orders in last 365 days, calculation is refreshed daily'
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
    description: 'this metric should always be calculated on customer level as it returns the number of accepted order placed by a customer in his/her last shopping day'
    type: avg
    sql: ${TABLE}.LAST_DAY_ACCEPTED_ORDER_COUNT

  - measure: last_day_number_merchant_shopped
    description: 'this metric should always be calculated on customer level as it returns the number of distinct merchant shopped by a customer in his/her last shopping day'
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
    label: 'lifetime Accepted Order Count'
    description: 'total number of accepted orders in lifetime, calculation is refreshed daily'  
    type: sum
    sql: ${TABLE}.LIFETIME_ACCEPTED_ORDER_COUNT

  - measure: lifetime_aov_converted_usd_accepted
    label: 'lifetime Aov (converted in $USD) accepted'
    description: 'Average order value converted in USD, lifetime - currently taking implied assumption' 
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_CONVERTED_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: lifetime_aov_eur_accepted
    label: 'lifetime Aov (in €EUR) accepted'
    description: 'Average order value in EUR (merchant pricing CCY), lifetime' 
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_EUR_ACCEPTED
    value_format: '"€"#,###'

  - measure: lifetime_aov_gbp_accepted
    label: 'lifetime Aov (in £GBP) accepted'
    description: 'Average order value in GBP (merchant pricing CCY), lifetime' 
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_GBP_ACCEPTED
    value_format: '"£"#,###'

  - measure: lifetime_aov_usd_accepted
    label: 'lifetime Aov (in $USD) accepted'
    description: 'Average order value in USD (merchant pricing CCY), lifetime' 
    type: avg
    sql: ${TABLE}.LIFETIME_AOV_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: lifetime_aur_converted_usd_accepted
    label: 'lifetime Aur (converted in $USD) accepted'
    description: 'Average unit retail converted in USD, lifetime - currently taking implied assumption' 
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_CONVERTED_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: lifetime_aur_eur_accepted
    label: 'lifetime Aur (in €EUR) accepted'
    description: 'Average unit retail in EUR (merchant pricing CCY), lifetime'
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_EUR_ACCEPTED
    value_format: '"€"#,###'

  - measure: lifetime_aur_gbp_accepted
    label: 'lifetime Aur (in £GBP) accepted'
    description: 'Average unit retail in GBP (merchant pricing CCY), lifetime'
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_GBP_ACCEPTED
    value_format: '"£"#,###'

  - measure: lifetime_aur_usd_accepted
    label: 'lifetime Aur (in $USD) accepted'
    description: 'Average unit retail in USD (merchant pricing CCY), lifetime'
    type: avg
    sql: ${TABLE}.LIFETIME_AUR_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: lifetime_cancelled_order_count
    label: 'lifetime Cancelled Order Count'
    description: 'total number of cancelled orders in lifetime, calculation is refreshed daily'  
    type: sum
    sql: ${TABLE}.LIFETIME_CANCELLED_ORDER_COUNT

  - dimension: lifetime_customer_status
    label: 'lifetime Customer Status'
    description: 'customer status in lifetime, calculation is refreshed daily'
    type: string
    sql: ${TABLE}.LIFETIME_CUSTOMER_STATUS

  - measure: lifetime_gmv_converted_usd_accepted
    label: 'lifetime Gmv (converted in $USD) accepted'
    description: 'Gross merchant value converted in USD, lifetime - currently taking implied assumption' 
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_CONVERTED_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: lifetime_gmv_eur_accepted
    label: 'lifetime Gmv (in €EUR) accepted'
    description: 'Gross merchant value (merchant pricing CCY in EUR) in lifetime' 
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_EUR_ACCEPTED
    value_format: '"€"#,###'

  - measure: lifetime_gmv_gbp_accepted
    label: 'lifetime Gmv (in £GBP) accepted'
    description: 'Gross merchant value (merchant pricing CCY in GBP) in lifetime' 
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_GBP_ACCEPTED
    value_format: '"£"#,###'

  - measure: lifetime_gmv_usd_accepted
    label: 'lifetime Gmv (in $USD) accepted'
    description: 'Gross merchant value (merchant pricing CCY in USD) in lifetime' 
    type: sum
    sql: ${TABLE}.LIFETIME_GMV_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: lifetime_mv_converted_usd_accepted
    label: 'lifetime Mv (converted in $USD) accepted'
    description: 'Merchant value converted in USD, lifetime - currently taking implied assumption' 
    type: sum
    sql: ${TABLE}.LIFETIME_MV_CONVERTED_USD_ACCEPTED
    value_format: '"$"#,###'
    
  - measure: lifetime_mv_eur_accepted
    label: 'lifetime Mv (in €EUR) accepted'
    description: 'Merchant value (merchant pricing CCY in EUR) in lifetime' 
    type: sum
    sql: ${TABLE}.LIFETIME_MV_EUR_ACCEPTED
    value_format: '"€"#,###'

  - measure: lifetime_mv_gbp_accepted
    label: 'lifetime Mv (in £GBP) accepted'
    description: 'Merchant value (merchant pricing CCY in GBP) in lifetime' 
    type: sum
    sql: ${TABLE}.LIFETIME_MV_GBP_ACCEPTED
    value_format: '"£"#,###'

  - measure: lifetime_mv_usd_accepted
    label: 'lifetime Mv (in $USD) accepted'
    description: 'Merchant value (merchant pricing CCY in USD) in lifetime' 
    type: sum
    sql: ${TABLE}.LIFETIME_MV_USD_ACCEPTED
    value_format: '"$"#,###'

  - measure: lifetime_num_item_accepted
    label: 'lifetime Number of Items accepted'
    description: 'total number of items in accepted orders in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED

  - measure: lifetime_num_item_accepted_eu_merch
    label: 'lifetime Number of Items (from EU merchant) accepted'
    description: 'total number of items (merchant pricing CCY in EUR) in accepted orders in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_EU_MERCH

  - measure: lifetime_num_item_accepted_uk_merch
    label: 'lifetime Number of Items (from UK merchant) accepted'
    description: 'total number of items (merchant pricing CCY in GBP) in accepted orders in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_UK_MERCH

  - measure: lifetime_num_item_accepted_us_merch
    label: 'lifetime Number of Items (from US merchant) accepted'
    description: 'total number of items (merchant pricing CCY in USD) in accepted orders in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ITEM_ACCEPTED_US_MERCH

  - measure: lifetime_num_order_accepted
    label: 'lifetime Number of Orders accepted'
    description: 'total number of accepted orders in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED

  - measure: lifetime_num_order_accepted_eu_merch
    label: 'lifetime Number of Orders (from EU merchant) accepted'
    description: 'total number of accepted orders (merchant pricing CCY in EUR) in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_EU_MERCH

  - measure: lifetime_num_order_accepted_uk_merch
    label: 'lifetime Number of Orders (from UK merchant) accepted'
    description: 'total number of accepted orders (merchant pricing CCY in GBP) in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_UK_MERCH

  - measure: lifetime_num_order_accepted_us_merch
    label: 'lifetime Number of Orders (from US merchant) accepted'
    description: 'total number of accepted orders (merchant pricing CCY in USD) in lifetime'
    type: sum
    sql: ${TABLE}.LIFETIME_NUM_ORDER_ACCEPTED_US_MERCH

  - measure: lifetime_number_merchant_shopped
    label: 'lifetime Number of Merchant Shopped'
    type: avg
    sql: ${TABLE}.LIFETIME_NUMBER_MERCHANT_SHOPPED
    
  - measure: lifetime_rejected_order_count
    label: 'lifetime Rejected Order Count'
    description: 'total number of rejected orders in lifetime, calculation is refreshed daily'  
    type: sum
    sql: ${TABLE}.LIFETIME_REJECTED_ORDER_COUNT

  - dimension: lifetime_shopped_from_merch_entity
    label: 'lifetime Customers Segmented by Merchant Entity'
    description: 'customers are segmented by merchant pricing ccy according to the merchants that they shopped from in lifetime'
    type: string
    sql: ${TABLE}.LIFETIME_SHOPPED_FROM_MERCH_ENTITY

  - measure: lifetime_submitted_order_count
    label: 'lifetime Submitted Order Count'
    description: 'total number of submitted orders in lifetime, calculation is refreshed daily'  
    type: sum
    sql: ${TABLE}.LIFETIME_SUBMITTED_ORDER_COUNT

  - dimension_group: run
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_time
    hidden: true

  - dimension: new_vs_existing_daily  
    type: string
    sql: |
      CASE WHEN ${TABLE}.first_bf_accepted_date_key != ${order_fact_totals.oh_created_date_key} THEN 'Existing' ELSE 'New' END
            
  - dimension: mv_rank_period
    label: 'Rank by MV (converted in $USD)'
    description: 'Currently taking implied assumption' 
    type: number
    sql: |
      rank() over(order by ${lifetime_mv_converted_usd_accepted} desc) 
      
  - measure: customer_count
    description: 'distinct number of customer'
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