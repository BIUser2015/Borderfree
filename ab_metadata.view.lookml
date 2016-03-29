- view: ab_metadata
  sql_table_name: APP_DATA.AB_METADATA
  fields:

  - dimension: experiment_desc
    type: string
    sql: ${TABLE}.EXPERIMENT_DESC

  - dimension: experiment_id
    type: string
    sql: ${TABLE}.EXPERIMENT_ID

  - measure: count
    type: count
    drill_fields: []

