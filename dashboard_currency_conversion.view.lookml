- view: dashboard_currency_conversion
  sql_table_name: LOOKER.DASHBOARD_CURRENCY_CONVERSION
  fields:

  - dimension: margin
    type: number
    sql: ${TABLE}.MARGIN

  - dimension: markedup_rate
    type: number
    sql: ${TABLE}.MARKEDUP_RATE

  - dimension: merch_rate_id
    type: int
    primary_key: true 
    sql: ${TABLE}.MERCH_RATE_ID

  - dimension: merchant_currency
    sql: ${TABLE}.MERCHANT_CURRENCY

  - dimension: non_markedup_rate
    type: number
    sql: ${TABLE}.NON_MARKEDUP_RATE
    value_format: '#,##0.00'

  - dimension: reporting_date
    type: int
    sql: ${TABLE}.REPORTING_DATE

  - dimension: shopper_currency
    sql: ${TABLE}.SHOPPER_CURRENCY

  - measure: count
    type: count

  - measure: convert_rate
    type: sum
    sql: ${non_markedup_rate}

