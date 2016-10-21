- view: user_accounts_subs
  sql_table_name: DW.USER_ACCOUNTS_SUBS
  fields:

  - dimension_group: subs_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SUBS_END_DATE

  - dimension: subs_name
    type: string
    sql: ${TABLE}.SUBS_NAME

  - dimension_group: subs_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SUBS_START_DATE

  - dimension: user_accountid
    type: string
    # hidden: true
    sql: ${TABLE}.USER_ACCOUNTID

  

