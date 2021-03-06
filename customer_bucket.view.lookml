- view: customer_bucket

# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.customer_bucket
#
# # Or, you could make this view a derived table, like this:
  derived_table:
    ##persist_for: 24 hours
    ##indexes: [customer_key]
    sql: |
      select cd.year_month_number as order_created_month
      , 'Total distinct customer' as customer_bucket
      , count(distinct oft.customer_key) as customer_count_by_bucket

      from agg.order_fact_totals oft
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 

      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cast({% parameter year_month %} as int) = cd.year_month_number

      group by cd.year_month_number 

      UNION ALL


      select cd.year_month_number as order_created_month
      , 'New distinct customer' as customer_bucket
      , count(distinct oft.customer_key) as customer_count_by_bucket

      from agg.order_fact_totals oft
      join dev.customer_fact cf on oft.customer_key = cf.customer_key
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cast({% parameter year_month %} as int) = cf.cohort_year_month
      and cast({% parameter year_month %} as int) = cd.year_month_number
      
      group by cd.year_month_number 
      
      UNION ALL 
      
      
      select rep.year_month_number as order_created_month
      , 'Repeat distinct customer' as customer_bucket
      , count(distinct rep.customer_key) as customer_count_by_bucket

      FROM (
      select SUB.customer_key, SUB.year_month_number
      , datediff( day, 
      cast( to_char(SUB.prior_order_date_key) as date)
      , cast( to_char(SUB.first_order_M_date_key) as date)  ) as days_between  
  
      from (
      select sub1.customer_key
      , sub1.year_month_number
      , sub1.first_order_M_date_key
      , coalesce(sub2.prior_order_date_key, sub1.first_order_M_date_key) as prior_order_date_key
    
      from (  select oft.customer_key, cd.year_month_number 
      , min(oft.oh_created_date_key) as first_order_M_date_key
      from agg.order_fact_totals oft
      join dev.customer_fact cf on oft.customer_key = cf.customer_key
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cast({% parameter year_month %} as int) <> cf.cohort_year_month
      and cast({% parameter year_month %} as int) = cd.year_month_number
      group by oft.customer_key, cd.year_month_number   ) sub1 
      join (  select sub1x.customer_key
      , max(oft.oh_created_date_key) as prior_order_date_key    
          
      from (  select oft.customer_key 
      , min(oft.oh_created_date_key) as first_order_M_date_key
      from agg.order_fact_totals oft
      join dev.customer_fact cf on oft.customer_key = cf.customer_key
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cast({% parameter year_month %} as int) <> cf.cohort_year_month
      and cast({% parameter year_month %} as int) = cd.year_month_number
      group by oft.customer_key   ) sub1x 
      left join agg.order_fact_totals oft on sub1x.customer_key = oft.customer_key  
      where oft.ignore = 0 
      and oft.accepted_order_yn = 'Y' 
      and oft.oh_created_date_key < sub1x.first_order_M_date_key 
      group by sub1x.customer_key   ) sub2 on sub1.customer_key = sub2.customer_key 
      ) SUB 
      ) rep where rep.days_between <= 365

      group by rep.year_month_number

      UNION ALL


      select rep.year_month_number as order_created_month
      , 'Reactivated distinct customer' as customer_bucket
      , count(distinct rep.customer_key) as customer_count_by_bucket

      FROM (
      select SUB.customer_key, SUB.year_month_number
      , datediff( day, 
      cast( to_char(SUB.prior_order_date_key) as date)
      , cast( to_char(SUB.first_order_M_date_key) as date)  ) as days_between  
  
      from (
      select sub1.customer_key
      , sub1.year_month_number
      , sub1.first_order_M_date_key
      , coalesce(sub2.prior_order_date_key, sub1.first_order_M_date_key) as prior_order_date_key
    
      from (  select oft.customer_key, cd.year_month_number 
      , min(oft.oh_created_date_key) as first_order_M_date_key
      from agg.order_fact_totals oft
      join dev.customer_fact cf on oft.customer_key = cf.customer_key
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cast({% parameter year_month %} as int) <> cf.cohort_year_month
      and cast({% parameter year_month %} as int) = cd.year_month_number
      group by oft.customer_key, cd.year_month_number   ) sub1 
      join (  select sub1x.customer_key
      , max(oft.oh_created_date_key) as prior_order_date_key    
          
      from (  select oft.customer_key 
      , min(oft.oh_created_date_key) as first_order_M_date_key
      from agg.order_fact_totals oft
      join dev.customer_fact cf on oft.customer_key = cf.customer_key
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cast({% parameter year_month %} as int) <> cf.cohort_year_month
      and cast({% parameter year_month %} as int) = cd.year_month_number
      group by oft.customer_key   ) sub1x 
      left join agg.order_fact_totals oft on sub1x.customer_key = oft.customer_key  
      where oft.ignore = 0 
      and oft.accepted_order_yn = 'Y' 
      and oft.oh_created_date_key < sub1x.first_order_M_date_key 
      group by sub1x.customer_key   ) sub2 on sub1.customer_key = sub2.customer_key 
      ) SUB 
      ) rep where rep.days_between > 365

      group by rep.year_month_number

      UNION ALL 


      select target_month.year_month_number as order_created_month
      , 'Lapsed distinct customer' as customer_bucket
      , tot.total_distinct_customer - lp.customer_who_made_next_purchase as customer_count_by_bucket

      FROM (  select lp.year_month_number 
      , count(lp.customer_key) as customer_who_made_next_purchase
    
      from (
      select oft.customer_key, sub.year_month_number
      , min(oft.oh_order_id) as next_order 
    
      from (      select oft.customer_key, cd.year_month_number
      , max(cd.date_time_start) as last_date_time_start
      from agg.order_fact_totals oft
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cd.year_month_number = (
      select distinct cd.year_month_number 
      from dw.calendar_dim cd 
      join (  select distinct cd.month_start_date 
      from dw.calendar_dim cd 
      where cast({% parameter year_month %} as int) = cd.year_month_number  ) a on cd.month_start_date = (  trunc(add_months(a.month_start_date, -12), 'MM')  ) )
      group by oft.customer_key, cd.year_month_number
      ) sub 
      join agg.order_fact_totals oft on sub.customer_key = oft.customer_key 
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      and ( cd.date_time_start > sub.last_date_time_start
      and cd.date_time_start <= (sub.last_date_time_start + 365)  )
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      
      group by oft.customer_key, sub.year_month_number
      ) lp
      group by lp.year_month_number   ) lp


      JOIN (  select cd.year_month_number
      , count(distinct oft.customer_key) as total_distinct_customer
      from agg.order_fact_totals oft
      join dw.calendar_dim cd on oft.oh_created_date_key = cd.date_key
      join dw.merchant_dim md on oft.oh_merch_id = md.merch_id and md.ignore = 0 and md.date_to = '2199-12-31' 
      where oft.ignore = 0
      and oft.accepted_order_yn = 'Y'
      and cd.year_month_number = (
      select distinct cd.year_month_number 
      from dw.calendar_dim cd 
      join (  select distinct cd.month_start_date 
      from dw.calendar_dim cd 
      where cast({% parameter year_month %} as int) = cd.year_month_number  ) a on cd.month_start_date = (  trunc(add_months(a.month_start_date, -12), 'MM')  ) )
      group by cd.year_month_number 
      ) tot on lp.year_month_number = tot.year_month_number


      JOIN (  select distinct z1.year_month_number 
      , cd.year_month_number as lapsed_year_month_number
      from (    select trunc(add_months(z.month_start_date, -12), 'MM') as lapsed_calculation_month_start_date
      , z.year_month_number
      from (  select distinct x.year_month_number
      , y.month_start_date
      from dw.calendar_dim y
      join (  select distinct cd.year_month_number as year_month_number
      from dw.calendar_dim cd
      where cast({% parameter year_month %} as int) = cd.year_month_number    ) x on y.year_month_number = x.year_month_number
      ) z   ) z1
      join dw.calendar_dim cd on z1.lapsed_calculation_month_start_date = cd.month_start_date
      ) target_month on lp.year_month_number = target_month.lapsed_year_month_number

  
  fields:
  
  - filter: year_month
    label: 'Order Created Year Month'
    description: 'MUST use this filter and please insert ONLY ONE year month number, e.g., 201601 at a time; otherwise, the calculation will be wrong'
    ##type: number
    type: string ## beta testing on {% parameter year_month %} <> the type must be string
    suggest_dimension: ${calendar_dim.year_month_number}
    
  ##- filter: cohort_year_month
    ##label: 'Cohort Year Month Number'
    ##description: 'MUST use this filter together with the Order Created Year Month filter and please insert the SAME year month number and set the condition to "is not equal to"; otherwise, the calculation will be wrong'
    ##type: number
    ##suggest_dimension: ${calendar_dim.year_month_number}  
    
  - dimension: order_created_month
    type: number
    sql: ${TABLE}.order_created_month
    hidden: true
    
  - dimension: customer_bucket
    description: 'this must be used together with Customer Count by Bucket'
    type: string
    sql: ${TABLE}.customer_bucket
    
  - dimension: customer_count_by_bucket
    label: 'Customer Count by Bucket'
    description: 'this must be used together with Customer Bucket; all counts are based on accepted orders'
    type: number
    sql: ${TABLE}.customer_count_by_bucket