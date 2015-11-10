- view: actuals_historical
  sql_table_name: LOOKER.ACTUALS_HISTORICAL
  fields:

  - dimension: actual_id
    type: int
    sql: ${TABLE}.ACTUAL_ID

  - dimension: financial_entity_name
    sql: ${TABLE}.FINANCIAL_ENTITY_NAME

  - dimension: merch_id
    type: int
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    sql: ${TABLE}.MERCH_NAME

  - dimension: mv_accepted_actual
    type: number
    sql: ${TABLE}.MV_ACCEPTED_ACTUAL

  - dimension: net_mv_shipped_actual
    type: number
    sql: ${TABLE}.NET_MV_SHIPPED_ACTUAL

  - dimension: orders_cancelled
    type: number
    sql: ${TABLE}.ORDERS_CANCELLED

  - dimension: parcels_shipped_actual
    type: number
    sql: ${TABLE}.PARCELS_SHIPPED_ACTUAL

  - dimension: reporting_date
    type: int
    sql: ${TABLE}.REPORTING_DATE

  - dimension: reporting_group
    sql: ${TABLE}.REPORTING_GROUP

  - measure: count
    type: count
    drill_fields: [merch_name, financial_entity_name]
