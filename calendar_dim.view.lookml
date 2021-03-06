- view: calendar_dim
  label: 'Calendar Dimension'
  sql_table_name: DW.CALENDAR_DIM
  fields:

  - dimension: date_key
    type: number
    primary_key: true
    sql: ${TABLE}.DATE_KEY
    hidden: true 

  - dimension_group: date_time_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DATE_TIME_END
    hidden: true 

  - dimension_group: date_time_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DATE_TIME_START

  - dimension: date_value
    sql: ${TABLE}.DATE_VALUE
    hidden: true 

  - dimension: day_of_month_number
    type: number
    sql: ${TABLE}.DAY_OF_MONTH_NUMBER

  - dimension: day_of_quarter_number
    type: number
    sql: ${TABLE}.DAY_OF_QUARTER_NUMBER

  - dimension: day_of_week_name
    sql: ${TABLE}.DAY_OF_WEEK_NAME

  - dimension: day_of_week_number
    type: number
    sql: ${TABLE}.DAY_OF_WEEK_NUMBER

  - dimension: day_of_week_short_name
    sql: ${TABLE}.DAY_OF_WEEK_SHORT_NAME

  - dimension: day_of_year_number
    type: number
    sql: ${TABLE}.DAY_OF_YEAR_NUMBER

  - dimension: days_in_month
    type: number
    sql: ${TABLE}.DAYS_IN_MONTH

  - dimension: days_in_quarter
    type: number
    sql: ${TABLE}.DAYS_IN_QUARTER

  - dimension: days_in_year
    type: number
    sql: ${TABLE}.DAYS_IN_YEAR

  - dimension: is_weekend_flag
    type: number
    sql: ${TABLE}.IS_WEEKEND_FLAG

  - dimension_group: iso_week_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ISO_WEEK_END_DATE
    hidden: true 

  - dimension: iso_week_number
    type: number
    sql: ${TABLE}.ISO_WEEK_NUMBER
    hidden: true 

  - dimension_group: iso_week_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ISO_WEEK_START_DATE
    hidden: true 

  - dimension: last_day_of_month_flag
    type: number
    sql: ${TABLE}.LAST_DAY_OF_MONTH_FLAG
    hidden: true 

  - dimension: last_day_of_quarter_flag
    type: number
    sql: ${TABLE}.LAST_DAY_OF_QUARTER_FLAG
    hidden: true 
     
  - dimension_group: month_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MONTH_END_DATE
    hidden: true
    
  - dimension: month_name
    sql: ${TABLE}.MONTH_NAME
    html: <a href=/dashboards/22><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    
  - dimension: month
    sql: ${TABLE}.MONTH_NAME
    html: <a href=/dashboards/20><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>    

  - dimension: month_number
    type: number
    sql: ${TABLE}.MONTH_NUMBER
    html: <a href=/dashboards/22><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    
  - dimension: month_num
    label: Month Number 
    type: number
    sql: ${TABLE}.MONTH_NUMBER
    html: <a href=/dashboards/20><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>    

  - dimension: month_short_name
    sql: ${TABLE}.MONTH_SHORT_NAME

  - dimension_group: month_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MONTH_START_DATE

  - dimension: month_value
    type: number
    sql: ${TABLE}.MONTH_VALUE

  - dimension: month_value_abs
    type: number
    sql: ${TABLE}.MONTH_VALUE_ABS

  - dimension: month_year
    sql: ${TABLE}.MONTH_YEAR

  - dimension: mtd_flag
    sql: ${TABLE}.MTD_FLAG

  - dimension: mtd_ly_flag
    sql: ${TABLE}.MTD_LY_FLAG

  - dimension: qtd_flag
    sql: ${TABLE}.QTD_FLAG

  - dimension: qtd_ly_flag
    sql: ${TABLE}.QTD_LY_FLAG
    hidden: true 

  - dimension_group: quarter_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.QUARTER_END_DATE

  - dimension: quarter_name
    sql: ${TABLE}.QUARTER_NAME
    html: <a href=/dashboards/22><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>
    
  - dimension: quarter
    sql: ${TABLE}.QUARTER_NAME
    html: <a href=/dashboards/20><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>    

  - dimension_group: quarter_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.QUARTER_START_DATE

  - dimension: quarter_value
    type: number
    sql: ${TABLE}.QUARTER_VALUE

  - dimension: quarter_value_abs
    type: number
    sql: ${TABLE}.QUARTER_VALUE_ABS

  - dimension_group: week_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.WEEK_END_DATE

  - dimension: week_in_month_number
    type: number
    sql: ${TABLE}.WEEK_IN_MONTH_NUMBER

  - dimension: week_in_year_number
    type: number
    sql: ${TABLE}.WEEK_IN_YEAR_NUMBER
    html: <a href=/dashboards/22><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>

  - dimension: week_in_year_number_start_sun
    type: number
    sql: ${TABLE}.WEEK_IN_YEAR_NUMBER_START_SUN
    html: <a href=/dashboards/22><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>

  - dimension: week_in_year_value
    sql: ${TABLE}.WEEK_IN_YEAR_VALUE
    html: <a href=/dashboards/22><font color="#2FB2DE">{{ rendered_value }} <img src="/images/qr-graph-line@2x.png" height=20 width=20> </a>

  - dimension_group: week_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.WEEK_START_DATE

  - dimension: week_value_abs
    type: number
    sql: ${TABLE}.WEEK_VALUE_ABS

  - dimension: wtd_flag
    sql: ${TABLE}.WTD_FLAG

  - dimension: wtd_ly_flag
    sql: ${TABLE}.WTD_LY_FLAG

  - dimension: year_day_name
    sql: ${TABLE}.YEAR_DAY_NAME

  - dimension_group: year_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.YEAR_END_DATE

  - dimension: year_month
    sql: ${TABLE}.YEAR_MONTH

  - dimension: year_month_name
    sql: ${TABLE}.YEAR_MONTH_NAME

  - dimension: year_month_number
    type: number
    sql: ${TABLE}.YEAR_MONTH_NUMBER

  - dimension: year_name
    sql: ${TABLE}.YEAR_NAME

  - dimension: year_quarter_name
    sql: ${TABLE}.YEAR_QUARTER_NAME

  - dimension: year_short_name
    sql: ${TABLE}.YEAR_SHORT_NAME

  - dimension_group: year_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.YEAR_START_DATE

  - dimension: year_value
    type: number
    sql: ${TABLE}.YEAR_VALUE

  - dimension: year_week_name
    sql: ${TABLE}.YEAR_WEEK_NAME

  - dimension: ytd_flag
    sql: ${TABLE}.YTD_FLAG

  - dimension: ytd_ly_flag
    sql: ${TABLE}.YTD_LY_FLAG

  - dimension: yyyymmdd
    sql: ${TABLE}.YYYYMMDD
    
  - dimension: mmdd
    sql: right(${TABLE}.YYYYMMDD,5) 
    
  - dimension: current_day
    type: yesno
    sql: trunc(${TABLE}.date_time_start) = trunc(sysdate)
    hidden: true
    
  - dimension: current_month
    type: yesno
    sql: month(${TABLE}.date_time_start) = month(sysdate)    
    
  - dimension: current_quarter 
    type: yesno
    sql: quarter(${TABLE}.date_time_start) = quarter(sysdate)
    hidden: true 

  - dimension: current_year 
    type: yesno
    sql: year(${TABLE}.date_time_start) = year(sysdate)
    hidden: true 

  - dimension: previous_year 
    type: yesno
    sql: year(${TABLE}.date_time_start) = year(sysdate)-1 
    hidden: true 
    
  - dimension: two_years 
    type: yesno
    sql: year(${TABLE}.date_time_start) >= year(sysdate)-1 
    hidden: true 
    
  - dimension: up_to_same_date_in_month
    type: yesno
    sql: EXTRACT(DAY FROM CURRENT_DATE) > ${TABLE}.day_of_month_number
    hidden: true 
    
  - dimension: up_to_same_date_in_quarter 
    type: yesno
    sql: (EXTRACT(DOQ FROM sysdate)) > ${TABLE}.day_of_quarter_number
    hidden: true 
    
  - dimension: up_to_same_date_in_year
    type: yesno
    sql: EXTRACT(DOY FROM sysdate) > ${TABLE}.day_of_year_number 
    hidden: true 

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - year_day_name
    - year_short_name
    - year_name
    - year_quarter_name
    - quarter_name
    - year_month_name
    - month_short_name
    - month_name
    - year_week_name
    - day_of_week_short_name
    - day_of_week_name

    customer_fact_detail:
    - current_month
    - date_key
    - date_time_start_date
    - date_time_start_week
    - date_time_start_month
    - day_of_week_number
    - day_of_month_number
    - day_of_quarter_number
    - day_of_week_name
    - day_of_year_number
    - is_weekend_flag
    - month_name
    - month_value
    - month_year
    - quarter_name
    - quarter_value
    - week_in_month_number
    - week_in_year_value
    - year_month_name
    - year_month_number
    - year_name
    - year_quarter_name
    - year_value
    - year_week_name

    customer_bucket_detail:
    - current_month
    - year_month_name 
    - year_month_number 