- view: user_accounts_subs
  sql_table_name: DW.USER_ACCOUNTS_SUBS
  fields:

  - dimension_group: subs_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SUBS_END_DATE

  - dimension: subs_name
    type: string
    sql: 
    #--${TABLE}.SUBS_NAME
      CASE
        WHEN ${TABLE}.SUBS_NAME = 'LOYALTY' THEN 'BF_LOYALTY'
        WHEN ${TABLE}.SUBS_NAME = 'bfLoyalty' THEN 'BF_LOYALTY'
        ELSE ${TABLE}.SUBS_NAME
      END
      
  - dimension: bfloyalty_account
    type: yesno
    sql:  ${user_accounts_subs.subs_name} = 'BF_LOYALTY'

  - dimension_group: subs_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SUBS_START_DATE

  - dimension: user_accountid
    type: string
    # hidden: true
    sql: ${TABLE}.USER_ACCOUNTID

  

