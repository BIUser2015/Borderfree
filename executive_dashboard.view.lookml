- view: executive_dashboard
  sql_table_name: LOOKER.EXECUTIVE_DASHBOARD
  fields:
  
  - dimension: dashboard_id
    type: int
    primary_key: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension: billing_country
    sql: ${TABLE}.BILLING_COUNTRY

  - dimension: billing_country_key
    type: int
    sql: ${TABLE}.BILLING_COUNTRY_KEY

  - dimension: checkout_client
    sql: ${TABLE}.CHECKOUT_CLIENT

  - dimension: checkout_status
    sql: ${TABLE}.CHECKOUT_STATUS

  - dimension: created_date_key
    type: int
    sql: ${TABLE}.CREATED_DATE_KEY

  - dimension: credit_card_type
    sql: ${TABLE}.CREDIT_CARD_TYPE

  - dimension: etl_run_date
    sql: ${TABLE}.ETL_RUN_DATE

  - dimension: financial_entity
    sql: ${TABLE}.FINANCIAL_ENTITY

  - dimension: gmv
    type: number
    sql: ${TABLE}.GMV

  - dimension: gmv_total_discount
    type: number
    sql: ${TABLE}.GMV_TOTAL_DISCOUNT

  - dimension: gmv_total_handling
    type: number
    sql: ${TABLE}.GMV_TOTAL_HANDLING

  - dimension: gmv_total_product
    type: number
    sql: ${TABLE}.GMV_TOTAL_PRODUCT

  - dimension: gmv_total_shipping
    type: number
    sql: ${TABLE}.GMV_TOTAL_SHIPPING

  - dimension: gmv_total_tariff
    type: number
    sql: ${TABLE}.GMV_TOTAL_TARIFF

  - dimension: gmv_total_vat
    type: number
    sql: ${TABLE}.GMV_TOTAL_VAT

  - dimension: ignore_flag
    sql: ${TABLE}.IGNORE_FLAG

  - dimension: last_update_full_time_stamp
    sql: ${TABLE}.LAST_UPDATE_FULL_TIME_STAMP

  - dimension: merch_id
    type: int
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: merchant_ccy
    sql: ${TABLE}.MERCHANT_CCY
    html: |
      {{ linked_value }}
      <a href="/dashboards/5?CCY={{ value }}" >
      <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>

  - dimension: mv
    type: number
    sql: ${TABLE}.MV

  - dimension: mv_total_discount
    type: number
    sql: ${TABLE}.MV_TOTAL_DISCOUNT

  - dimension: mv_total_handling
    type: number
    sql: ${TABLE}.MV_TOTAL_HANDLING

  - dimension: mv_total_product
    type: number
    sql: ${TABLE}.MV_TOTAL_PRODUCT

  - dimension: mv_total_shipping
    type: number
    sql: ${TABLE}.MV_TOTAL_SHIPPING

  - dimension: number_of_items
    type: int
    sql: ${TABLE}.NUMBER_OF_ITEMS

  - dimension: oh_created_date_time_stamp
    sql: ${TABLE}.OH_CREATED_DATE_TIME_STAMP

  - dimension: oh_order_id
    sql: ${TABLE}.OH_ORDER_ID

  - dimension_group: order
    type: time
    timeframes: [time, date, week, month, hour]
    sql: ${TABLE}.ORDER_DATE

  - dimension: shipping_country
    sql: ${TABLE}.SHIPPING_COUNTRY

  - dimension: shipping_country_iso3
    sql: ${TABLE}.SHIPPING_COUNTRY_ISO3

  - dimension: shipping_country_key
    type: int
    sql: ${TABLE}.SHIPPING_COUNTRY_KEY

  - dimension: is_order_current_quarter
    type: yesno
    sql: quarter(${order_date}) = quarter(sysdate)

  - measure: order_count
    type: count
    drill_fields: [merch_name]
    
  - measure: total_mv_gpb
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: GBP
    value_format: '"£"#,###'
  
  - measure: total_mv_both
    type: sum
    sql: ${mv}
 
    
  - measure: total_mv_gpb_cq
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: GBP
      is_order_current_quarter: yes 
    value_format: '"£"#,###'
    
  - measure: total_mv_usd
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
    value_format: '"$"#,###'

  - measure: rolling_total_orders
    type: running_total
    sql:  ${order_count}
