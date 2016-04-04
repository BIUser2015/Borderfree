- view: merchant_category_dim
  label: 'Category Dimension'
  sql_table_name: DW.MERCHANT_CATEGORY_DIM
  fields:

  - dimension: calculated_average_weight
    type: number
    sql: ${TABLE}.CALCULATED_AVERAGE_WEIGHT
    hidden: true 

  - dimension: category_id
    type: string
    sql: ${TABLE}.CATEGORY_ID
    hidden: true 

  - dimension: category_parent_id
    type: string
    sql: ${TABLE}.CATEGORY_PARENT_ID
    hidden: true 

  - dimension: category_tree
    type: string
    sql: ${TABLE}.CATEGORY_TREE

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CREATED_DATE
    hidden: true 

  - dimension_group: date_from
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DATE_FROM
    hidden: true 

  - dimension_group: date_to
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DATE_TO
    hidden: true 

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

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

  - dimension: external_id
    type: string
    sql: ${TABLE}.EXTERNAL_ID
    hidden: true 

  - dimension: google_age_id
    type: string
    sql: ${TABLE}.GOOGLE_AGE_ID
    hidden: true 

  - dimension: google_category_id
    type: string
    sql: ${TABLE}.GOOGLE_CATEGORY_ID
    hidden: true 

  - dimension: google_gender_id
    type: string
    sql: ${TABLE}.GOOGLE_GENDER_ID
    hidden: true 

  - dimension: google_special_size
    type: string
    sql: ${TABLE}.GOOGLE_SPECIAL_SIZE
    hidden: true 

  - dimension_group: last_reviewed_restriction
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LAST_REVIEWED_RESTRICTION_DATE
    hidden: true 

  - dimension_group: last_update
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LAST_UPDATE
    hidden: true 

  - dimension: manual_override_weight
    type: number
    sql: ${TABLE}.MANUAL_OVERRIDE_WEIGHT
    hidden: true 

  - dimension: merch_category_key
    type: number
    sql: ${TABLE}.MERCH_CATEGORY_KEY
    hidden: true 

  - dimension: merch_id
    type: number
    sql: ${TABLE}.MERCH_ID
    hidden: true 

  - dimension: merch_key
    type: number
    sql: ${TABLE}.MERCH_KEY
    hidden: true 

  - dimension: name
    label: 'Category Name'
    type: string
    sql: ${TABLE}."NAME"

  - dimension: url
    type: string
    sql: ${TABLE}.URL
    hidden: true 

  - dimension: version
    type: number
    sql: ${TABLE}.VERSION
    hidden: true 

  - dimension: weight_calc_method
    type: string
    sql: ${TABLE}.WEIGHT_CALC_METHOD
    hidden: true 


