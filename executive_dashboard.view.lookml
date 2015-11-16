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
    drill_fields: merchantdrillset*
    
  - dimension: merchant_name
    sql: ${TABLE}.MERCH_NAME
    html: |
      {{ linked_value }}
      <a href="/dashboards/18?merchant_name={{ value }}" target="_new">
      <img src="/images/qr-graph-line@2x.png" height=20 width=20></a>

    
  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME
    drill_fields: merchantdrillset*    

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

  - dimension: order_hour_number
    type: int
    sql: EXTRACT(hour FROM EXECUTIVE_DASHBOARD.ORDER_DATE) 

  - dimension: order_day_number
    type: int 
    sql: EXTRACT(DAY FROM ${order_date}) 
    
  - dimension: is_order_current_day
    type: yesno
    sql: trunc(${order_date}) = trunc(sysdate)    
    
  - dimension: is_order_yesterday
    type: yesno
    sql: trunc(${order_date}) = trunc(sysdate) -1   
    
  - dimension: is_order_past_three_days
    type: yesno
    sql: trunc(${order_date}) >= trunc(sysdate)-3 and trunc(${order_date}) < trunc(sysdate)     
    
  - dimension: is_order_past_seven_days
    type: yesno
    sql: trunc(${order_date}) >= trunc(sysdate)-7 and trunc(${order_date}) < trunc(sysdate) 
    
  - dimension: is_same_day_in_month 
    type: yesno
    sql: EXTRACT(DAY FROM ${order_date}) <= EXTRACT(DAY FROM CURRENT_DATE)
    
  - dimension: is_current_two_days_in_month
    type: yesno
    sql: (EXTRACT(DAY FROM ${order_date}) >= EXTRACT(DAY FROM CURRENT_DATE)-1  and EXTRACT(DAY FROM ${order_date}) <= EXTRACT(DAY FROM CURRENT_DATE))    
    
  - dimension: is_same_day_in_quarter 
    type: yesno
    sql: EXTRACT(DOQ FROM ${order_date}) <= EXTRACT(DOQ FROM CURRENT_DATE)  
    
  - dimension: is_same_day_in_year 
    type: yesno
    sql: EXTRACT(DOY FROM ${order_date}) <= EXTRACT(DOY FROM CURRENT_DATE)      

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
    sql: year(${order_date}) = year(sysdate)-1
  
  - measure: total_order_count
    type: count
    drill_fields: orderdrillset*
 
  - measure: total_orders_current_year
    label: Number of Orders. Current Year
    type: count
    filter: 
      is_order_current_year: YES 

  - measure: total_orders_last_year
    label: Number of Orders. Previous Year
    type: count
    filter: 
      is_order_last_year: YES 

  - measure: total_orders_current_year_quarter
    label: Number of Orders. Current Quarter
    type: count
    filter: 
      is_order_current_year: YES 
      is_order_current_quarter: YES 

  - measure: total_orders_last_year_quarter
    label: Number of Orders. Current Quarter Previous Year
    type: count
    filter: 
      is_order_last_year: YES
      is_order_current_quarter: YES 

  - measure: total_orders_year_current_month
    label: Number of Orders. Current Month
    type: count
    filter: 
      is_order_current_year: YES 
      is_order_current_month: YES  

  - measure: total_orders_last_year_current_month
    label: Number of Orders. Current Month Previous Year
    type: count
    filter: 
      is_order_last_year: YES
      is_order_current_month: YES
      
  - measure: total_orders_48_hours
    label: Number of Orders. Current 2 days 
    type: count
    filter: 
      is_order_current_year: YES 
      is_order_current_month: YES 
      is_current_two_days_in_month: YES 

  - measure: total_orders_48_hours_last_year
    label: Number of Orders. Current 2 days last year 
    type: count
    filter: 
      is_order_last_year: YES
      is_order_current_month: YES
      is_current_two_days_in_month: YES 
       
  - measure: cancelled_orders
    type: count
    filter: 
     checkout_status: CANCELLED
    drill_fields: orderdrillset* 
    
  - measure: accepted_orders
    type: count
    filter: 
     checkout_status: 'GREEN,CANCELLED'
  
    
  - measure: rejected_orders
    type: count
    filter: 
     checkout_status: RED     
    drill_fields: orderdrillset*
     
  - measure: pending_orders
    type: count
    filter: 
     checkout_status: YELLOW  
    drill_fields: orderdrillset*  
    
  - measure: accepted_orders_yesterday
    type: count
    filter: 
      checkout_status: 'GREEN,CANCELLED'
      is_order_yesterday: YES 

  - measure: accepted_orders_past_three_days
    type: count
    filter: 
     checkout_status: 'GREEN,CANCELLED'
     is_order_past_three_days: YES 
     
  - measure: accepted_orders_past_seven_days
    type: count
    filter: 
     checkout_status: 'GREEN,CANCELLED' 
     is_order_past_seven_days: YES 
     
  - measure: cancelled_orders_yesterday
    type: count
    filter: 
      checkout_status: CANCELLED
      is_order_yesterday: YES 

  - measure: cancelled_orders_past_three_days
    type: count
    filter: 
     checkout_status: CANCELLED
     is_order_past_three_days: YES 
     
  - measure: cancelled_orders_past_seven_days
    type: count
    filter: 
     checkout_status: CANCELLED
     is_order_past_seven_days: YES      

  - measure: cancelled_order_percentage_yesterday
    type: number
    sql: (${cancelled_orders_yesterday} / ${accepted_orders_yesterday} ) * 100
    value_format: '0.00\%'
    
  - measure: cancelled_order_percentage_past_three_days
    type: number
    sql: (${cancelled_orders_past_three_days} / ${accepted_orders_past_three_days} ) * 100
    value_format: '0.00\%'    
    
  - measure: cancelled_order_percentage_past_seven_days
    type: number
    sql: (${cancelled_orders_past_seven_days} / ${accepted_orders_past_seven_days} ) * 100
    value_format: '0.00\%'    
  
  - measure: rolling_total_orders
    type: running_total
    sql:  ${total_order_count}
    html: <font color="#7CC5DE">{{ rendered_value }} </a>   
    
  - measure: order_count_irl
    type: count
    filter: 
      merchant_ccy: GBP
    drill_fields: orderdrillset*
    
  - measure: order_count_usa
    type: count
    filter: 
      merchant_ccy: USD
    drill_fields: orderdrillset*   
  
  
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

  - measure: total_mv_usd_current_year
    label: Current Year MV(USD) 
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
      is_order_current_year: YES 
    value_format: '"$"#,###' 
    
  - measure: total_mv_usd_last_year
    label: Previous Year MV(USD) 
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
      is_order_last_year: YES 
    value_format: '"$"#,###' 
    
  - measure: total_mv_usd_current_year_quarter
    label: Current Quarter MV(USD) 
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
      is_order_current_year: YES
      is_order_current_quarter: YES 
    value_format: '"$"#,###' 
    
  - measure: total_mv_usd_last_year_quarter
    label: Current Quarter Previous Year MV(USD) 
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
      is_order_last_year: YES 
      is_order_current_quarter: YES 
    value_format: '"$"#,###' 
    
  - measure: total_mv_usd_current_month
    label: Current Month MV(USD) 
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
      is_order_current_year: YES 
      is_order_current_month: YES 
    value_format: '"$"#,###' 
    
  - measure: total_mv_usd_48_hours
    label:  Trending MV
    type: sum
    sql: ${mv}
    filter: 
      is_order_current_year: YES 
      is_order_current_month: YES
      is_current_two_days_in_month: YES 
      
  - measure: total_mv_usd_48_hours_last_year
    label:  Trending MV Last Year 
    type: sum
    sql: ${mv}
    filter: 
      is_order_last_year: YES 
      is_order_current_month: YES
      is_current_two_days_in_month: YES     
    
  - measure: total_mv_usd_last_year_current_month
    label: Current Month Previous Year MV(USD) 
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: USD
      is_order_last_year: YES 
      is_order_current_month: YES 
    value_format: '"$"#,###' 
    
  - measure: total_mv_gbp
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: GBP
    value_format: '"£"#,###' 
    
  - measure: total_mv_gbp_current_year
    label: Current Year MV(GBP) 
    type: sum
    sql: COALESCE(${mv},0)
    filter: 
      merchant_ccy: GBP
      is_order_current_year: YES 
    value_format: '"£"#,###'     

  - measure: total_mv_gbp_last_year
    label: Previous Year MV(GBP) 
    type: sum
    sql: COALESCE(${mv},0)
    filter: 
      merchant_ccy: GBP
      is_order_last_year: YES 
    value_format: '"£"#,###' 
    
  - measure: total_mv_gbp_current_year_quarter
    label: Current Quarter MV(GBP) 
    type: sum
    sql: COALESCE(${mv},0)
    filter: 
      merchant_ccy: GBP
      is_order_current_year: YES 
      is_order_current_quarter: YES 
    value_format: '"£"#,###'     

  - measure: total_mv_gbp_last_year_quarter
    label: Current Quarter Previous Year MV(GBP) 
    type: sum
    sql: COALESCE(${mv},0)
    filter: 
      merchant_ccy: GBP
      is_order_last_year: YES
      is_order_current_quarter: YES 
    value_format: '"£"#,###'     
    
  - measure: total_mv_gbp_current_year_current_month
    label: Current Month MV(GBP) 
    type: sum
    sql: COALESCE(${mv},0)
    filter: 
      merchant_ccy: GBP
      is_order_current_year: YES 
      is_order_current_month: YES  
    value_format: '"£"#,###'     

  - measure: total_mv_gbp_last_year_current_month
    label: Current Month Previous Year MV(GBP) 
    type: sum
    sql: COALESCE(${mv},0)
    filter: 
      merchant_ccy: GBP
      is_order_last_year: YES
      is_order_current_month: YES  
    value_format: '"£"#,###'     

  - measure: total_mv_both
    type: sum
    sql: ${mv}
    drill_fields: merchantdrillset*
    
    
  - measure: total_gmv_usd_current_year
    label: Current Year GMV(USD) 
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
      is_order_current_year: YES 
    value_format: '"$"#,###' 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a> 
    
  - measure: total_gmv_usd_last_year
    label: Previous Year GMV(USD) 
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
      is_order_last_year: YES 
    value_format: '"$"#,###' 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a> 
    
  - measure: total_gmv_usd_current_year_quarter
    label: Current Quarter GMV(USD) 
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
      is_order_current_year: YES
      is_order_current_quarter: YES 
    value_format: '"$"#,###' 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a> 
    
  - measure: total_gmv_usd_last_year_quarter
    label: Current Quarter Previous Year GMV(USD) 
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
      is_order_last_year: YES 
      is_order_current_quarter: YES 
    value_format: '"$"#,###' 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a> 
    
  - measure: total_gmv_usd_current_month
    label: Current Month GMV(USD) 
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
      is_order_current_year: YES 
      is_order_current_month: YES 
    value_format: '"$"#,###' 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    
  - measure: total_gmv_usd_last_year_current_month
    label: Current Month Previous Year GMV(USD) 
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
      is_order_last_year: YES 
      is_order_current_month: YES 
    value_format: '"$"#,###' 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>      

  - measure: total_gmv_gbp
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: GBP
    html: <a href=/dashboards/6><font color="#6CC5DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    value_format: '"£"#,###'
    
  - measure: total_gmv_gbp_current_year
    label: Current Year GMV(GBP) 
    type: sum
    sql: COALESCE(${gmv},0)
    filter: 
      merchant_ccy: GBP
      is_order_current_year: YES 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    value_format: '"£"#,###'     

  - measure: total_gmv_gbp_last_year
    label: Previous Year GMV(GBP) 
    type: sum
    sql: COALESCE(${gmv},0)
    filter: 
      merchant_ccy: GBP
      is_order_last_year: YES 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    value_format: '"£"#,###' 
    
  - measure: total_gmv_gbp_current_year_quarter
    label: Current Quarter GMV(GBP) 
    type: sum
    sql: COALESCE(${gmv},0)
    filter: 
      merchant_ccy: GBP
      is_order_current_year: YES 
      is_order_current_quarter: YES 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    value_format: '"£"#,###'     

  - measure: total_gmv_gbp_last_year_quarter
    label: Current Quarter Previous Year GMV(GBP) 
    type: sum
    sql: COALESCE(${gmv},0)
    filter: 
      merchant_ccy: GBP
      is_order_last_year: YES
      is_order_current_quarter: YES 
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    value_format: '"£"#,###'     
    
  - measure: total_gmv_gbp_current_year_current_month
    label: Current Month GMV(GBP) 
    type: sum
    sql: COALESCE(${gmv},0)
    filter: 
      merchant_ccy: GBP
      is_order_current_year: YES 
      is_order_current_month: YES  
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    value_format: '"£"#,###'     

  - measure: total_gmv_gbp_last_year_current_month
    label: Current Month Previous Year GMV(GBP) 
    type: sum
    sql: COALESCE(${gmv},0)
    filter: 
      merchant_ccy: GBP
      is_order_last_year: YES
      is_order_current_month: YES  
    html: <a href=/dashboards/22><font color="#168EF7">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>  
    value_format: '"£"#,###'     
    
    
  - measure: total_gmv_both
    type: sum
    sql: ${gmv}  
    drill_fields: merchantdrillset*
    
  - measure: total_gmv_usd
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
    value_format: '"$"#,###'
    html: <a href=/dashboards/22<font color="#7CC5DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    
  - measure: accepted_gmv_usd
    type: sum
    sql: ${gmv}
    filter: 
      merchant_ccy: USD
      checkout_status: GREEN
    value_format: '"$"#,###'
    
  - measure: total_mv_gpb_cq
    type: sum
    sql: ${mv}
    filter: 
      merchant_ccy: GBP
      is_order_current_quarter: yes 
    value_format: '"£"#,###'
    html: <a href=/dashboards/22><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    
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
    drill_fields: orderdrillset*
    
  - measure: aov_mv_gbp
    type: number
    sql: ${total_mv_gbp} / ${total_order_count}
    value_format: '"£"#,##0.00' 
    drill_fields: orderdrillset*

  - measure: aov_gmv_gbp
    type: number
    sql: ${total_gmv_gbp} / ${total_order_count}
    value_format: '"£"#,##0.00'
    drill_fields: orderdrillset*
   
  - measure: aur_mv_usd
    type: number
    sql: ${total_mv_usd} / ${items_in_order}
    value_format: '$#,##0.00'
    drill_fields: merchantdrillset*

  - measure: aur_gmv_usd
    type: number
    sql: ${total_gmv_usd} / ${items_in_order}
    value_format: '$#,##0.00' 
    drill_fields: merchantdrillset*
    
  - measure: aur_mv_gbp
    type: number
    sql: ${total_mv_gbp} / ${items_in_order}
    value_format: '"£"#,##0.00' 
    drill_fields: merchantdrillset*

  - measure: aur_gmv_gbp
    type: number
    sql: ${total_gmv_gbp} / ${items_in_order}
    value_format: '"£"#,##0.00'
    drill_fields: merchantdrillset*
    

  sets: 
  
    orderdrillset:
      - merch_id 
      - merch_name
      - total_order_count
      - merchant_ccy
      - checkout_status
      - total_mv_both
      - total_gmv_both
   
    merchantdrillset:
      - merch_id 
      - merch_name
      - merchant_ccy
      - oh_order_id
      - checkout_status
      - checkout_client
      - credit_card_type
      - shipping_country
      - items_in_order 
      - total_mv_both
      - total_gmv_both
  
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
      
      
    
    
