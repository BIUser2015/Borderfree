- view: cn_stats
  sql_table_name: LOOKER.CN_STATS
  fields:

  - dimension: category
    sql: ${TABLE}.CATEGORY

  - dimension: checkout_status
    sql: ${TABLE}.CHECKOUT_STATUS

  - dimension: credit_card_type
    sql: ${TABLE}.CREDIT_CARD_TYPE

  - dimension: item_id
    primary_key: true
    type: int
    sql: ${TABLE}.ITEM_ID

  - dimension: item_mv
    type: number
    sql: ${TABLE}.ITEM_MV

  - dimension: merch_id
    type: int
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: merchant_sku
    sql: ${TABLE}.MERCHANT_SKU

  - dimension_group: order_accepted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ORDER_ACCEPTED_DATE

  - dimension: order_id
    sql: ${TABLE}.ORDER_ID

  - dimension: product_manufacturer
    sql: ${TABLE}.PRODUCT_MANUFACTURER

  - dimension: product_name
    sql: ${TABLE}.PRODUCT_NAME

  - dimension: shipping_country
    sql: ${TABLE}.SHIPPING_COUNTRY

  - measure: count
    type: count
    drill_fields: [product_name, merch_name]

