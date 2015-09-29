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
    
  - dimension: is_order_current_year
    type: yesno
    sql: year(${order_date}) = year(sysdate)    

  - dimension: is_order_current_quarter
    type: yesno
    sql: quarter(${order_date}) = quarter(sysdate)
    
  - dimension: is_order_current_month
    type: yesno
    sql: month(${order_date}) = month(sysdate)

  - dimension: is_order_last_year
    type: yesno
    sql: year(${order_date}) = year(sysdate)
  
  - measure: total_order_count
    type: count
    drill_fields: [merch_name]
    
  - measure: cancelled_orders
    type: count
    filter: 
     checkout_status: CANCELLED
    
  - measure: accepted_orders
    type: count
    filter: 
     checkout_status: GREEN
     
  - measure: rejected_orders
    type: count
    filter: 
     checkout_status: RED     
     
  - measure: pending_orders
    type: count
    filter: 
     checkout_status: YELLOW  
  
  - measure: rolling_total_orders
    type: running_total
    sql:  ${total_order_count}
    html: <font color="#7CC5DE">{{ rendered_value }} </a>   
    
  - measure: order_count_irl
    type: count
    filter: 
      merchant_ccy: GBP
    html: <font color="#7CC5DE">{{ rendered_value }} </a>     
    drill_fields: [merch_name]
    
  - measure: order_count_usa
    type: count
    filter: 
      merchant_ccy: USD
    html: <font color="#7CC5DE">{{ rendered_value }} </a>    
    drill_fields: [merch_name,total_mv_usd]    
  
  
  - filter: current_date_filter
    type: date
    
  - measure: items_in_order 
    type: sum
    sql: ${number_of_items}
    

  - measure: total_mv_usd
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
    value_format: '"$"#,###' 
    html: <a href=/dashboards/7><font color="#7CC5DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>

  - measure: total_mv_gbp
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: GBP
    html: <a href=/dashboards/7><font color="#7CC5DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    value_format: '"£"#,###' 

  - measure: total_mv_both
    type: sum
    sql: ${mv}

  - measure: total_gmv_gbp
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: GBP
    html: <a href=/dashboards/6><font color="#7CC5DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    value_format: '"£"#,###'
    
  - measure: total_gmv_usd
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
    value_format: '"$"#,###'
    html: <a href=/dashboards/7><font color="#7CC5DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
  
  - measure: total_mv_gpb_cq
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: GBP
      is_order_current_quarter: yes 
    value_format: '"£"#,###'
    html: <a href=/dashboards/6><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    
  - measure: gmv_total_product_gbp
    type: sum
    filter: 
      merchant_ccy: GBP
    sql: ${gmv_total_product}  
    value_format: '"£"#,###'
    
  - measure: gmv_total_handling_gbp
    type: sum
    filter: 
      merchant_ccy: GBP
    sql: ${gmv_total_handling}
    value_format: '"£"#,###'
    
  - measure: gmv_total_shipping_gbp
    type: sum
    filter: 
      merchant_ccy: GBP
    sql: ${gmv_total_shipping}
    value_format: '"£"#,###'
    
  - measure: gmv_total_tariff_gbp
    type: sum
    filter: 
      merchant_ccy: GBP
    sql: ${gmv_total_tariff}
    value_format: '"£"#,###'
    
  - measure: gmv_total_vat_gbp
    type: sum
    filter: 
      merchant_ccy: GBP
    sql: ${gmv_total_vat}
    value_format: '"£"#,###'
    
  - measure: gmv_total_product_usd
    type: sum
    filter: 
      merchant_ccy: USD
    sql: ${gmv_total_product}  
    value_format: '"$"#,###'
    
  - measure: gmv_total_handling_usd
    type: sum
    filter: 
      merchant_ccy: USD
    sql: ${gmv_total_handling}
    value_format: '"$"#,###'
    
  - measure: gmv_total_shipping_usd
    type: sum
    filter: 
      merchant_ccy: USD
    sql: ${gmv_total_shipping}
    value_format: '"$"#,###'
    
  - measure: gmv_total_tariff_usd
    type: sum
    filter: 
      merchant_ccy: USD
    sql: ${gmv_total_tariff}
    value_format: '"$"#,###'
    
  - measure: gmv_total_vat_usd
    type: sum
    filter: 
      merchant_ccy: USD
    sql: ${gmv_total_vat} 
    value_format: '"$"#,###'
    
  - measure: aov_mv_usd
    type: number
    sql: ${total_mv_usd} / ${total_order_count}
    value_format: '$#,##0.00'

  - measure: aov_gmv_usd
    type: number
    sql: ${total_gmv_usd} / ${total_order_count}
    value_format: '$#,##0.00'    
    
  - measure: aov_mv_gbp
    type: number
    sql: ${total_mv_gbp} / ${total_order_count}
    value_format: '#,##0.00'

  - measure: aov_gmv_gbp
    type: number
    sql: ${total_gmv_gbp} / ${total_order_count}
    value_format: '#,##0.00'
   
  - measure: aur_mv_usd
    type: number
    sql: ${total_mv_usd} / ${items_in_order}
    value_format: '$#,##0.00'

  - measure: aur_gmv_usd
    type: number
    sql: ${total_gmv_usd} / ${items_in_order}
    value_format: '$#,##0.00'    
    
  - measure: aur_mv_gbp
    type: number
    sql: ${total_mv_gbp} / ${items_in_order}
    value_format: '"£"#,###'

  - measure: aur_gmv_gbp
    type: number
    sql: ${total_gmv_gbp} / ${items_in_order}
    value_format: '"£"#,##0.00'        
    

  sets: 
    gmvdrillgbp: 
      - gmv_total_product_gbp
      - gmv_total_shipping_gbp
      - gmv_total_handling_gbp
      - gmv_total_tariff_gbp
      - gmv_total_vat_gbp
    
    gmvdrillusd: 
      - gmv_total_product_usd
      - gmv_total_shipping_usd
      - gmv_total_handling_usd
      - gmv_total_tariff_usd
      - gmv_total_vat_usd
      
      
    
    
