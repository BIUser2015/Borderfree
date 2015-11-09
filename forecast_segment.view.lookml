- view: forecast_segment
  sql_table_name: LOOKER.FORECAST_SEGMENT
  fields:

  - dimension: forecast_segment_id
    primary_key: true
    type: int
    sql: ${TABLE}.FORECAST_SEGMENT_ID

  - dimension: mccy
    sql: ${TABLE}.MCCY

  - dimension: mv_accepted
    type: number
    sql: ${TABLE}.MV_ACCEPTED

  - dimension: net_mv_shipped
    type: number
    sql: ${TABLE}.NET_MV_SHIPPED

  - dimension: reporting_date
    type: int
    sql: ${TABLE}.REPORTING_DATE

  - dimension: reporting_segment
    sql: ${TABLE}.REPORTING_SEGMENT

  - measure: count
    type: count
    drill_fields: [forecast_segment_id]
    
  - measure: shipped_mv_by_segment
    type: sum
    sql: mv_accepted

