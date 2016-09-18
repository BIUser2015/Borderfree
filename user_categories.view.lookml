- view: user_categories
  derived_table:
      sql: |
        select 
          a.user_accountid as user_accountid, 
          split_part(categories, ';', numbers.num) as category
        from dw.user_accounts a
        join (select row_number() over () num from dw.user_accounts)  numbers
        on numbers.num <= regexp_count(a.categories, ';') + 1

  fields:
      - dimension: user_accountid
        type: string
        sql: ${TABLE}.user_accountid
        
      - dimension: category
        type: string
        sql: ${TABLE}.category
        
# #     Define your dimensions and measures here, like this:
#     - dimension: profit
#       type: number
#       sql: ${TABLE}.profit
#
#     - measure: total_profit
#       type: sum
#       sql: ${profit}

