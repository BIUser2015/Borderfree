- view: cyberweek_legend
  sql_table_name: LOOKER.CYBERWEEK_LEGEND
  fields:

  - dimension_group: cy
    label: Current Year   
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CY_DATE

  - dimension: holiday_name
    sql: ${TABLE}.HOLIDAY_NAME

  - dimension_group: ly
    label: Last Year 
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LY_DATE

  - dimension: ordered_day
    sql: ${TABLE}.ORDERED_DAY

  - dimension: sorting_order
    type: int
    sql: ${TABLE}.SORTING_ORDER

  - measure: count
    type: count
    drill_fields: [holiday_name]

