- view: country_dim
  sql_table_name: DW.COUNTRY_DIM
  fields:

  - dimension: bf_region
    sql: ${TABLE}.BF_REGION

  - dimension: consumer_region
    sql: ${TABLE}.CONSUMER_REGION

  - dimension: country_code
    sql: ${TABLE}.COUNTRY_CODE

  - dimension: country_currency
    sql: ${TABLE}.COUNTRY_CURRENCY

  - dimension: country_key
    type: number
    sql: ${TABLE}.COUNTRY_KEY

  - dimension: country_language
    sql: ${TABLE}.COUNTRY_LANGUAGE

  - dimension: country_name
    sql: ${TABLE}.COUNTRY_NAME

  - dimension_group: date_from
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DATE_FROM

  - dimension_group: date_to
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DATE_TO

  - dimension: default_postal_code
    sql: ${TABLE}.DEFAULT_POSTAL_CODE

  - dimension_group: etl_inserted
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ETL_INSERTED

  - dimension: etl_job_num
    type: number
    sql: ${TABLE}.ETL_JOB_NUM

  - dimension: has_restrictions_data
    sql: ${TABLE}.HAS_RESTRICTIONS_DATA

  - dimension: is_valid_coo
    sql: ${TABLE}.IS_VALID_COO

  - dimension: iso_3
    sql: ${TABLE}.ISO_3

  - dimension: un_region
    sql: ${TABLE}.UN_REGION

  - dimension: un_sub_region
    sql: ${TABLE}.UN_SUB_REGION

  - dimension: version
    type: number
    sql: ${TABLE}.VERSION

  - measure: count
    type: count
    drill_fields: [country_name]