- view: ab_metadata
  sql_table_name: APP_DATA.AB_METADATA
  fields:

  - dimension: experiment_id
    primary_key: true
    type: string
    sql: ${TABLE}.EXPERIMENT_ID
    
  - dimension: experiment_desc
    type: string
    sql: ${TABLE}.EXPERIMENT_DESC

