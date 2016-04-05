- view: merchant_dim
  label: 'Merchant Dimension'
  sql_table_name: DW.MERCHANT_DIM
  fields:

  - dimension: merch_key
    primary_key: true 
    type: number
    sql: ${TABLE}.MERCH_KEY
    hidden: true 

  - dimension: accepted_tac
    sql: ${TABLE}.ACCEPTED_TAC
    hidden: true 

  - dimension: accounting_ccy
    sql: ${TABLE}.ACCOUNTING_CCY
    hidden: true 

  - dimension: active_flag
    sql: ${TABLE}.ACTIVE_FLAG
    hidden: true 

  - dimension: channel_id
    type: number
    sql: ${TABLE}.CHANNEL_ID
    hidden: true 

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
    sql: ${TABLE}.DATE_TO
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

  - dimension: ext_merch_id
    sql: ${TABLE}.EXT_MERCH_ID
    hidden: true 

  - dimension: financial_entity_name
    label: 'Financial Entity'
    description: 'Legal Entity in which Merchant rolls into'
    sql: ${TABLE}.FINANCIAL_ENTITY_NAME

  - dimension: hosted_by
    sql: ${TABLE}.HOSTED_BY
    hidden: true 

  - dimension: ignore
    sql: ${TABLE}."IGNORE"
    hidden: true 

  - dimension: lifecycle_state
    sql: ${TABLE}.LIFECYCLE_STATE
    hidden: true 

  - dimension: merch_biz_ccy
    sql: ${TABLE}.MERCH_BIZ_CCY
    hidden: true 

  - dimension: merch_cs_email
    sql: ${TABLE}.MERCH_CS_EMAIL
    hidden: true 

  - dimension: merch_cs_phone
    sql: ${TABLE}.MERCH_CS_PHONE
    hidden: true 

  - dimension: merch_cs_url
    sql: ${TABLE}.MERCH_CS_URL
    hidden: true 

  - dimension: merch_headoffice_country
    sql: ${TABLE}.MERCH_HEADOFFICE_COUNTRY
    hidden: true 

  - dimension: merch_id
    label: 'Merchant ID'
    type: number
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    label: 'Merchant Name'
    sql: ${TABLE}.MERCH_NAME

  - dimension: merch_official_name
    label: 'Merchant Legal Name'
    sql: ${TABLE}.MERCH_OFFICIAL_NAME

  - dimension: merch_opened_by
    sql: ${TABLE}.MERCH_OPENED_BY
    hidden: true 

  - dimension_group: merch_opened
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MERCH_OPENED_DATE
    hidden: true 

  - dimension: merch_pricing_ccy
    label: 'Merchant Pricing Currency'
    sql: ${TABLE}.MERCH_PRICING_CCY

  - dimension: merch_status
    sql: ${TABLE}.MERCH_STATUS
    hidden: true 

  - dimension: merch_type
    sql: ${TABLE}.MERCH_TYPE
    hidden: true 

  - dimension: merch_website_url
    sql: ${TABLE}.MERCH_WEBSITE_URL
    hidden: true 

  - dimension: merchant_category
    sql: ${TABLE}.MERCHANT_CATEGORY
    hidden: true 

  - dimension: segment
    sql: ${TABLE}.SEGMENT
    hidden: true 

  - dimension: vat_id
    sql: ${TABLE}.VAT_ID
    hidden: true 

  - dimension: vat_inclusive_flag
    sql: ${TABLE}.VAT_INCLUSIVE_FLAG
    hidden: true 

  - dimension: vat_rate
    type: number
    sql: ${TABLE}.VAT_RATE
    hidden: true 

  - dimension: vat_type
    sql: ${TABLE}.VAT_TYPE
    hidden: true 

