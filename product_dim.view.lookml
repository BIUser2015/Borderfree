- view: product_dim
  sql_table_name: DW.PRODUCT_DIM
  fields:

  - dimension: apn
    sql: ${TABLE}.APN

  - dimension: box_height
    type: number
    sql: ${TABLE}.BOX_HEIGHT

  - dimension: box_length
    type: number
    sql: ${TABLE}.BOX_LENGTH

  - dimension: box_width
    type: number
    sql: ${TABLE}.BOX_WIDTH

  - dimension: care_instructions
    sql: ${TABLE}.CARE_INSTRUCTIONS

  - dimension: category_id
    sql: ${TABLE}.CATEGORY_ID

  - dimension: category_rate_id
    sql: ${TABLE}.CATEGORY_RATE_ID

  - dimension: coo
    sql: ${TABLE}.COO

  - dimension_group: coo_last_checked
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.COO_LAST_CHECKED_DATE

  - dimension: coo_source
    sql: ${TABLE}.COO_SOURCE

  - dimension: cos
    sql: ${TABLE}.COS

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CREATED_TIME

  - dimension: dutiable_price
    type: number
    sql: ${TABLE}.DUTIABLE_PRICE

  - dimension: dutiable_price_currency
    sql: ${TABLE}.DUTIABLE_PRICE_CURRENCY

  - dimension: ean
    sql: ${TABLE}.EAN

  - dimension: eccn
    sql: ${TABLE}.ECCN

  - dimension_group: etl_inserted
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ETL_INSERTED

  - dimension: etl_job_num
    type: number
    sql: ${TABLE}.ETL_JOB_NUM

  - dimension: fws_common_name
    sql: ${TABLE}.FWS_COMMON_NAME

  - dimension: fws_coo
    sql: ${TABLE}.FWS_COO

  - dimension: fws_scientific_name
    sql: ${TABLE}.FWS_SCIENTIFIC_NAME

  - dimension: fws_source
    sql: ${TABLE}.FWS_SOURCE

  - dimension: gtin
    sql: ${TABLE}.GTIN

  - dimension: is_active
    sql: ${TABLE}.IS_ACTIVE

  - dimension: is_fws_permit_req
    sql: ${TABLE}.IS_FWS_PERMIT_REQ

  - dimension: is_imported
    sql: ${TABLE}.IS_IMPORTED

  - dimension: is_kit
    sql: ${TABLE}.IS_KIT

  - dimension: is_ormd
    sql: ${TABLE}.IS_ORMD

  - dimension: isfurniture
    sql: ${TABLE}.ISFURNITURE

  - dimension: item_color
    sql: ${TABLE}.ITEM_COLOR

  - dimension: item_condition
    sql: ${TABLE}.ITEM_CONDITION

  - dimension: item_contents
    sql: ${TABLE}.ITEM_CONTENTS

  - dimension: item_height
    type: number
    sql: ${TABLE}.ITEM_HEIGHT

  - dimension: item_length
    type: number
    sql: ${TABLE}.ITEM_LENGTH

  - dimension: item_size
    sql: ${TABLE}.ITEM_SIZE

  - dimension: item_width
    type: number
    sql: ${TABLE}.ITEM_WIDTH

  - dimension: jan
    sql: ${TABLE}.JAN

  - dimension_group: last_reviewed_restriction
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LAST_REVIEWED_RESTRICTION_DATE

  - dimension_group: last_updated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LAST_UPDATED

  - dimension: locale
    sql: ${TABLE}.LOCALE

  - dimension: merch_id
    type: int
    sql: ${TABLE}.MERCH_ID

  - dimension: merchant_key
    type: number
    sql: ${TABLE}.MERCHANT_KEY

  - dimension: merchant_reference
    sql: ${TABLE}.MERCHANT_REFERENCE

  - dimension: mpn
    sql: ${TABLE}.MPN

  - dimension: notes
    sql: ${TABLE}.NOTES

  - dimension: product_description
    sql: ${TABLE}.PRODUCT_DESCRIPTION

  - dimension: product_group_id
    sql: ${TABLE}.PRODUCT_GROUP_ID

  - dimension: product_key
    type: number
    primary_key: true
    sql: ${TABLE}.PRODUCT_KEY

  - dimension: product_manufacturer
    sql: ${TABLE}.PRODUCT_MANUFACTURER

  - dimension: product_name
    sql: ${TABLE}.PRODUCT_NAME

  - dimension: product_url
    sql: ${TABLE}.PRODUCT_URL

  - dimension: sku
    sql: ${TABLE}.SKU

  - dimension: sku_item_id
    sql: ${TABLE}.SKU_ITEM_ID

  - dimension: upc
    sql: ${TABLE}.UPC

  - dimension: weight
    type: number
    sql: ${TABLE}.WEIGHT

  - measure: item_count
    type: count
    drill_fields: 
    - product_name
    - product_description
