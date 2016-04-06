- view: merchant_per_customer

# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.testing_pdt
#
# # Or, you could make this view a derived table, like this:
  derived_table:
    ##persist_for: 24 hours
    ##indexes: [customer_key]
    sql: |
      SELECT o.customer_key
      , cd.year_month_number
      , count(distinct o.oh_merch_id) as number_merchant_shopped 
      
      FROM agg.order_fact_totals o
      JOIN dw.calendar_dim cd on o.oh_created_date_key = cd.date_key
      JOIN dw.merchant_dim md on o.oh_merch_id = md.merch_id
      JOIN dw.country_dim c on o.shipping_country_key = c.country_key
      WHERE o.ignore = 0 
      and o.accepted_order_yn = 'Y'
      and md.ignore = 0
      and md.date_to = '2199-12-31'
      
      GROUP BY o.customer_key, cd.year_month_number

  fields:
  
  - dimension: customer_key
    type: number
    primary_key: true
    sql: ${TABLE}.customer_key
    hidden: true

  - dimension: year_month_number
    type: number
    sql: ${TABLE}.year_month_number
    hidden: true
    
  - measure: customer
    type: count
    hidden: true
    
  - measure: number_merchant_shopped
    label: 'Average Number of Merchant Shopped by Month'
    description: 'this metric is calculated on the fly and not stored in any table; this MUST BE calculated solely by month'
    type: avg
    sql: ${TABLE}.number_merchant_shopped
    value_format: '#,##0.00'