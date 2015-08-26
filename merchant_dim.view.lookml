- view: merchant_dim
  sql_table_name: DW.MERCHANT_DIM
  fields:

  - dimension: accepted_tac
    sql: ${TABLE}.ACCEPTED_TAC

  - dimension: accounting_ccy
    sql: ${TABLE}.ACCOUNTING_CCY

  - dimension: active_flag
    sql: ${TABLE}.ACTIVE_FLAG

  - dimension: channel_id
    type: int
    sql: ${TABLE}.CHANNEL_ID

  - dimension: cm
    sql: ${TABLE}.CM

  - dimension: comp_status
    sql: ${TABLE}.COMP_STATUS

  - dimension_group: config_owner
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CONFIG_OWNER_DATE

  - dimension: config_owner_id
    type: int
    sql: ${TABLE}.CONFIG_OWNER_ID

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CREATED_DATE

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

  - dimension_group: etl_inserted
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ETL_INSERTED

  - dimension: etl_job_num
    type: number
    sql: ${TABLE}.ETL_JOB_NUM

  - dimension: ext_merch_id
    sql: ${TABLE}.EXT_MERCH_ID

  - dimension: financial_entity_name
    sql: ${TABLE}.FINANCIAL_ENTITY_NAME

  - dimension: hosted_by
    sql: ${TABLE}.HOSTED_BY

  - dimension: ignore
    sql: ${TABLE}."IGNORE"

  - dimension: lifecycle_state
    sql: ${TABLE}.LIFECYCLE_STATE

  - dimension: merch_biz_ccy
    sql: ${TABLE}.MERCH_BIZ_CCY

  - dimension: merch_cs_email
    sql: ${TABLE}.MERCH_CS_EMAIL

  - dimension: merch_cs_phone
    sql: ${TABLE}.MERCH_CS_PHONE

  - dimension: merch_cs_url
    sql: ${TABLE}.MERCH_CS_URL

  - dimension: merch_headoffice_country
    sql: ${TABLE}.MERCH_HEADOFFICE_COUNTRY

  - dimension: merch_id
    type: int
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_key
    type: number
    sql: ${TABLE}.MERCH_KEY

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: merch_official_name
    sql: ${TABLE}.MERCH_OFFICIAL_NAME

  - dimension: merch_opened_by
    sql: ${TABLE}.MERCH_OPENED_BY

  - dimension_group: merch_opened
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MERCH_OPENED_DATE

  - dimension: merch_pricing_ccy
    sql: ${TABLE}.MERCH_PRICING_CCY

  - dimension: merch_status
    sql: ${TABLE}.MERCH_STATUS

  - dimension: merch_type
    sql: ${TABLE}.MERCH_TYPE

  - dimension: merch_website_url
    sql: ${TABLE}.MERCH_WEBSITE_URL

  - dimension: merchant_category
    sql: ${TABLE}.MERCHANT_CATEGORY

  - dimension: segment
    sql: ${TABLE}.SEGMENT

  - dimension: super_merchant_key
    type: int
    sql: ${TABLE}.SUPER_MERCHANT_KEY

  - dimension: super_merchant_name
    sql: ${TABLE}.SUPER_MERCHANT_NAME

  - dimension: tier_level
    sql: ${TABLE}.TIER_LEVEL

  - dimension: vat_id
    sql: ${TABLE}.VAT_ID

  - dimension: vat_inclusive_flag
    sql: ${TABLE}.VAT_INCLUSIVE_FLAG

  - dimension: vat_rate
    type: number
    sql: ${TABLE}.VAT_RATE

  - dimension: vat_type
    sql: ${TABLE}.VAT_TYPE

  - dimension: version
    type: number
    sql: ${TABLE}.VERSION

  - measure: count
    type: count
    drill_fields: [financial_entity_name, super_merchant_name, merch_official_name, merch_name]

