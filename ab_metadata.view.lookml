- view: ab_metadata
  label: 'Optimization Meta Data'
  sql_table_name: APP_DATA.AB_METADATA
  fields:

  - dimension: experiment_id
    primary_key: true
    type: string
    sql: ${TABLE}.EXPERIMENT_ID
    
  - dimension: experiment_desc
    label: 'Experiment Description'
    type: string
    sql: ${TABLE}.EXPERIMENT_DESC

