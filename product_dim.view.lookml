- view: product_dim
  label: 'Product Dimension'
  sql_table_name: DW.PRODUCT_DIM
  fields:

  - dimension: apn
    sql: ${TABLE}.APN
    hidden: true 

  - dimension: box_height
    type: number
    sql: ${TABLE}.BOX_HEIGHT
    hidden: true

  - dimension: box_length
    type: number
    sql: ${TABLE}.BOX_LENGTH
    hidden: true

  - dimension: box_width
    type: number
    sql: ${TABLE}.BOX_WIDTH
    hidden: true

  - dimension: care_instructions
    sql: ${TABLE}.CARE_INSTRUCTIONS
    hidden: true

  - dimension: category_id
    sql: ${TABLE}.CATEGORY_ID
    hidden: true

  - dimension: category_rate_id
    sql: ${TABLE}.CATEGORY_RATE_ID
    hidden: true

  - dimension: coo
    sql: ${TABLE}.COO

  - dimension_group: coo_last_checked
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.COO_LAST_CHECKED_DATE
    hidden: true

  - dimension: coo_source
    sql: ${TABLE}.COO_SOURCE

  - dimension: cos
    sql: ${TABLE}.COS
    hidden: true

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CREATED_TIME
    hidden: true

  - dimension: dutiable_price
    type: number
    sql: ${TABLE}.DUTIABLE_PRICE
    hidden: true

  - dimension: dutiable_price_currency
    sql: ${TABLE}.DUTIABLE_PRICE_CURRENCY
    hidden: true

  - dimension: ean
    sql: ${TABLE}.EAN
    hidden: true

  - dimension: eccn
    sql: ${TABLE}.ECCN
    hidden: true

  - dimension_group: etl_inserted
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ETL_INSERTED
    hidden: true

  - dimension: etl_job_num
    type: number
    sql: ${TABLE}.ETL_JOB_NUM
    hidden: true

  - dimension: fws_common_name
    sql: ${TABLE}.FWS_COMMON_NAME
    hidden: true

  - dimension: fws_coo
    sql: ${TABLE}.FWS_COO

  - dimension: fws_scientific_name
    sql: ${TABLE}.FWS_SCIENTIFIC_NAME
    hidden: true

  - dimension: fws_source
    sql: ${TABLE}.FWS_SOURCE
    hidden: true

  - dimension: gtin
    sql: ${TABLE}.GTIN
    hidden: true

  - dimension: is_active
    sql: ${TABLE}.IS_ACTIVE
    hidden: true

  - dimension: is_fws_permit_req
    sql: ${TABLE}.IS_FWS_PERMIT_REQ
    hidden: true

  - dimension: is_imported
    sql: ${TABLE}.IS_IMPORTED
    hidden: true

  - dimension: is_kit
    sql: ${TABLE}.IS_KIT
    hidden: true

  - dimension: is_ormd
    sql: ${TABLE}.IS_ORMD
    hidden: true

  - dimension: isfurniture
    sql: ${TABLE}.ISFURNITURE
    hidden: true

  - dimension: item_color
    sql: ${TABLE}.ITEM_COLOR
    hidden: true

  - dimension: item_condition
    sql: ${TABLE}.ITEM_CONDITION
    hidden: true

  - dimension: item_contents
    sql: ${TABLE}.ITEM_CONTENTS
    hidden: true

  - dimension: item_height
    type: number
    sql: ${TABLE}.ITEM_HEIGHT
    hidden: true

  - dimension: item_length
    type: number
    sql: ${TABLE}.ITEM_LENGTH
    hidden: true

  - dimension: item_size
    sql: ${TABLE}.ITEM_SIZE
    hidden: true

  - dimension: item_width
    type: number
    sql: ${TABLE}.ITEM_WIDTH
    hidden: true

  - dimension: jan
    sql: ${TABLE}.JAN
    hidden: true

  - dimension_group: last_reviewed_restriction
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LAST_REVIEWED_RESTRICTION_DATE
    hidden: true

  - dimension_group: last_updated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LAST_UPDATED
    hidden: true

  - dimension: locale
    sql: ${TABLE}.LOCALE
    hidden: true

  - dimension: merch_id
    type: number
    sql: ${TABLE}.MERCH_ID
    hidden: true

  - dimension: merchant_key
    type: number
    sql: ${TABLE}.MERCHANT_KEY
    hidden: true

  - dimension: merchant_reference
    sql: ${TABLE}.MERCHANT_REFERENCE
    hidden: true

  - dimension: mpn
    sql: ${TABLE}.MPN
    hidden: true

  - dimension: notes
    sql: ${TABLE}.NOTES
    hidden: true

  - dimension: product_description
    sql: ${TABLE}.PRODUCT_DESCRIPTION

  - dimension: product_group_id
    sql: ${TABLE}.PRODUCT_GROUP_ID
    hidden: true

  - dimension: product_key
    type: number
    primary_key: true
    sql: ${TABLE}.PRODUCT_KEY
    hidden: true

  - dimension: product_manufacturer
    label: 'Brand'
    sql: ${TABLE}.PRODUCT_MANUFACTURER

  - dimension: product_name
    sql: ${TABLE}.PRODUCT_NAME

  - dimension: product_url
    sql: ${TABLE}.PRODUCT_URL

  - dimension: sku
    sql: ${TABLE}.SKU

  - dimension: sku_item_id
    sql: ${TABLE}.SKU_ITEM_ID
    hidden: true

  - dimension: upc
    sql: ${TABLE}.UPC

  - dimension: weight
    type: number
    sql: ${TABLE}.WEIGHT
    hidden: true

  - measure: item_count
    type: count
    drill_fields: 
    - product_name
    - product_description
    - ${merchant_dim.merch_name}
