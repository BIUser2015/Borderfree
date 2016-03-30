- view: country_dim
  label: 'Country Dimension'
  sql_table_name: DW.COUNTRY_DIM
  fields:

  - dimension: bf_region
    label: 'Borderfree Region'
    description: 'Countries grouped by CM'
    sql: ${TABLE}.BF_REGION

  - dimension: consumer_region
    sql: ${TABLE}.CONSUMER_REGION
    hidden: true 

  - dimension: country_code
    sql: ${TABLE}.COUNTRY_CODE

  - dimension: country_currency
    sql: ${TABLE}.COUNTRY_CURRENCY
    hidden: true 

  - dimension: country_key
    type: number
    sql: ${TABLE}.COUNTRY_KEY
    hidden: true 

  - dimension: country_language
    sql: ${TABLE}.COUNTRY_LANGUAGE
    hidden: true 

  - dimension: country_name
    sql: ${TABLE}.COUNTRY_NAME

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

  - dimension: default_postal_code
    sql: ${TABLE}.DEFAULT_POSTAL_CODE
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

  - dimension: has_restrictions_data
    sql: ${TABLE}.HAS_RESTRICTIONS_DATA
    hidden: true 

  - dimension: is_valid_coo
    sql: ${TABLE}.IS_VALID_COO
    hidden: true 

  - dimension: iso_3
    sql: ${TABLE}.ISO_3
    hidden: true 

  - dimension: un_region
    sql: ${TABLE}.UN_REGION
    hidden: true 

  - dimension: un_sub_region
    sql: ${TABLE}.UN_SUB_REGION
    hidden: true 

  - dimension: version
    type: number
    sql: ${TABLE}.VERSION
    hidden: true 

  - measure: count
    type: count
    drill_fields: [country_name]