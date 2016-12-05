- view: fx_rates_dim
  sql_table_name: FIN.FX_RATES_DIM
  fields:

  - dimension: base_ccy
    type: string
    sql: ${TABLE}.BASE_CCY
    hidden: true

  - dimension: conversion_type
    type: string
    sql: ${TABLE}.CONVERSION_TYPE
    hidden: true

  - dimension: dest_ccy
    label: 'merchant CCY'
    type: string
    sql: ${TABLE}.DEST_CCY

  - dimension: fx_rate_key
    type: number
    sql: ${TABLE}.FX_RATE_KEY
    primary_key: true

  - measure: rate
    description: 'this is the daily fx rate associated with MCCY converted into USD'
    type: avg
    sql: ${TABLE}.RATE
    value_format: '#,##0.000000'
