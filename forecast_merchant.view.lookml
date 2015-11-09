- view: forecast_merchant
  sql_table_name: LOOKER.FORECAST_MERCHANT
  fields:

  - dimension: forecast_merchant_id
    primary_key: true
    type: int
    sql: ${TABLE}.FORECAST_MERCHANT_ID

  - dimension: mccy
    sql: ${TABLE}.MCCY

  - dimension: merch_id
    type: int
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: mv_acceptedl
    type: number
    sql: ${TABLE}.MV_ACCEPTEDL

  - dimension: reporting_date
    type: int
    sql: ${TABLE}.REPORTING_DATE

  - measure: count
    type: count
    drill_fields: [forecast_merchant_id, merch_name]

