- view: order_fact_totals
  sql_table_name: AGG.ORDER_FACT_TOTALS
  fields:

  - dimension: abandoned_order_yn
    type: string
    sql: ${TABLE}.ABANDONED_ORDER_YN

  - dimension: accepted_order_yn
    type: string
    sql: ${TABLE}.ACCEPTED_ORDER_YN

  - dimension: billing_address_key
    type: number
    sql: ${TABLE}.BILLING_ADDRESS_KEY
    hidden: true

  - dimension: billing_country_key
    type: number
    sql: ${TABLE}.BILLING_COUNTRY_KEY
    hidden: true

  - dimension: cancelled_order_yn
    type: string
    sql: ${TABLE}.CANCELLED_ORDER_YN

  - dimension: checkout_client
    type: string
    sql: ${TABLE}.CHECKOUT_CLIENT

  - dimension: customer_key
    type: string
    sql: ${TABLE}.CUSTOMER_KEY
    hidden: true
    
  - dimension: duty_tax_drawback
    type: number
    sql: ${TABLE}.DUTY_TAX_DRAWBACK
    hidden: true

  - dimension: fx_conversion_rate
    type: number
    sql: ${TABLE}.FX_CONVERSION_RATE
    hidden: true

  - dimension: ignore
    type: number
    sql: ${TABLE}."IGNORE"
    hidden: true

  - dimension: item_lcp_inflation_duty_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_DUTY_USD
    hidden: true

  - dimension: item_lcp_inflation_handling_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_HANDLING_USD
    hidden: true

  - dimension: item_lcp_inflation_shipping_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_SHIPPING_USD
    hidden: true

  - dimension: item_lcp_inflation_tax_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_TAX_USD
    hidden: true

  - dimension: max_num_same_item
    type: number
    sql: ${TABLE}.MAX_NUM_SAME_ITEM
    hidden: true

  - dimension: merchant_lcp_margin_total
    type: number
    sql: ${TABLE}.MERCHANT_LCP_MARGIN_TOTAL
    hidden: true

  - dimension: mv1000_bucket_end
    type: number
    sql: ${TABLE}.MV1000_BUCKET_END
    hidden: true

  - dimension: mv1000_bucket_start
    type: number
    sql: ${TABLE}.MV1000_BUCKET_START
    hidden: true

  - dimension: mv100_bucket_end
    type: number
    sql: ${TABLE}.MV100_BUCKET_END
    hidden: true

  - dimension: mv100_bucket_start
    type: number
    sql: ${TABLE}.MV100_BUCKET_START
    hidden: true

  - dimension: mv500_bucket_end
    type: number
    sql: ${TABLE}.MV500_BUCKET_END
    hidden: true

  - dimension: mv500_bucket_start
    type: number
    sql: ${TABLE}.MV500_BUCKET_START
    hidden: true

  - dimension: mv50_bucket_end
    type: number
    sql: ${TABLE}.MV50_BUCKET_END
    hidden: true

  - dimension: mv50_bucket_start
    type: number
    sql: ${TABLE}.MV50_BUCKET_START
    hidden: true

  - dimension: mv_bucket_100_end
    type: number
    sql: ${TABLE}.MV_BUCKET_100_END
    hidden: true

  - dimension: mv_bucket_100_start
    type: number
    sql: ${TABLE}.MV_BUCKET_100_START
    hidden: true

  - dimension: mv_bucket_10_end
    type: number
    sql: ${TABLE}.MV_BUCKET_10_END
    hidden: true

  - dimension: mv_bucket_10_start
    type: number
    sql: ${TABLE}.MV_BUCKET_10_START
    hidden: true

  - dimension: mv_bucket_25_end
    type: number
    sql: ${TABLE}.MV_BUCKET_25_END
    hidden: true

  - dimension: mv_bucket_25_start
    type: number
    sql: ${TABLE}.MV_BUCKET_25_START
    hidden: true

  - dimension: mv_bucket_50_end
    type: number
    sql: ${TABLE}.MV_BUCKET_50_END
    hidden: true

  - dimension: mv_bucket_50_start
    type: number
    sql: ${TABLE}.MV_BUCKET_50_START
    hidden: true

  - dimension: mv_bucket_5_end
    type: number
    sql: ${TABLE}.MV_BUCKET_5_END
    hidden: true

  - dimension: mv_bucket_5_start
    type: number
    sql: ${TABLE}.MV_BUCKET_5_START
    hidden: true

  - dimension: oh_checkout_status
    type: string
    sql: ${TABLE}.OH_CHECKOUT_STATUS

  - dimension: oh_checkout_status_key
    type: number
    sql: ${TABLE}.OH_CHECKOUT_STATUS_KEY
    hidden: true

  - dimension: oh_coupon_code
    type: string
    sql: ${TABLE}.OH_COUPON_CODE
    hidden: true

  - dimension: oh_created_date_key
    type: number
    sql: ${TABLE}.OH_CREATED_DATE_KEY

  - dimension: oh_created_hour
    type: number
    sql: ${TABLE}.OH_CREATED_HOUR

  - dimension: oh_created_minute
    type: number
    sql: ${TABLE}.OH_CREATED_MINUTE

  - dimension: oh_credit_card_key
    type: number
    sql: ${TABLE}.OH_CREDIT_CARD_KEY

  - dimension: oh_credit_card_type
    type: string
    sql: ${TABLE}.OH_CREDIT_CARD_TYPE

  - dimension: oh_ddu
    type: string
    sql: ${TABLE}.OH_DDU

  - dimension: oh_fiscal_created_date_key
    type: number
    sql: ${TABLE}.OH_FISCAL_CREATED_DATE_KEY

  - dimension: oh_merch_id
    type: number
    sql: ${TABLE}.OH_MERCH_ID

  - dimension: oh_merch_order_id
    type: string
    sql: ${TABLE}.OH_MERCH_ORDER_ID
    hidden: true

  - dimension: oh_order_id
    type: string
    primary_key: true
    sql: ${TABLE}.OH_ORDER_ID
    hidden: true

  - dimension: oq_buy_currency_key
    type: number
    sql: ${TABLE}.OQ_BUY_CURRENCY_KEY
    hidden: true

  - dimension: oq_buy_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_GRAND_TOT_USD_TOTAL
    hidden: true

  - dimension: oq_buy_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_ORDER_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_FINANCIAL_FEES_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_PRODUCT_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TARIFF_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_tpl_shiping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_SHIPING_USD_TOTAL
    hidden: true

  - dimension: oq_buy_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_VAT_USD_TOTAL
    hidden: true

  - dimension: oq_buy_vat_as_margin_mccy_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_AS_MARGIN_MCCY_TOTAL
    hidden: true

  - dimension: oq_buy_vat_as_margin_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_AS_MARGIN_TOTAL
    hidden: true

  - dimension: oq_buy_vat_reduction_mccy_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_REDUCTION_MCCY_TOTAL
    hidden: true

  - dimension: oq_buy_vat_reduction_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_REDUCTION_TOTAL
    hidden: true

  - dimension: oq_e4_x_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_GRAND_TOT_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_ORDER_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COD_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COD_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COP_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COP_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_FINANCIAL_FEES_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_PRODUCT_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TARIFF_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TPL_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TPL_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_e4_x_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_VAT_USD_TOTAL
    hidden: true

  - dimension: oq_lp_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_GRAND_TOT_USD_TOTAL
    hidden: true

  - dimension: oq_lp_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_ORDER_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COD_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COD_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COP_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COP_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_FINANCIAL_FEES_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_PRODUCT_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TARIFF_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TPL_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TPL_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_lp_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_VAT_USD_TOTAL
    hidden: true

  - dimension: oq_mer_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_ORDER_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COD_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COD_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COP_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COP_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_FINANCIAL_FEES_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_PRODUCT_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TARIFF_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TPL_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_tpl_shiping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TPL_SHIPING_USD_TOTAL
    hidden: true

  - dimension: oq_mer_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_VAT_USD_TOTAL
    hidden: true

  - dimension: oq_mer_vat_as_margin_total
    type: number
    sql: ${TABLE}.OQ_MER_VAT_AS_MARGIN_TOTAL
    hidden: true

  - dimension: oq_mer_vat_reduction_total
    type: number
    sql: ${TABLE}.OQ_MER_VAT_REDUCTION_TOTAL
    hidden: true

  - dimension: oq_merchant_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_MERCHANT_GRAND_TOT_USD_TOTAL
    hidden: true

  - dimension: oq_mp_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_GRAND_TOT_USD_TOTAL
    hidden: true

  - dimension: oq_mp_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_ORDER_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COD_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COD_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COP_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COP_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_FINANCIAL_FEES_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_plp_discount_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_PLP_DISCOUNT_TOTAL
    hidden: true

  - dimension: oq_mp_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_PRODUCT_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TARIFF_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TPL_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TPL_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_mp_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_VAT_USD_TOTAL
    hidden: true

  - dimension: oq_ms_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_GRAND_TOT_USD_TOTAL
    hidden: true

  - dimension: oq_ms_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_ORDER_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COD_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COD_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COP_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COP_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_DISCOUNT_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_FINANCIAL_FEES_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_PRODUCT_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TARIFF_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TPL_HANDLING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TPL_SHIPPING_USD_TOTAL
    hidden: true

  - dimension: oq_ms_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_VAT_USD_TOTAL
    hidden: true

  - dimension: osm_shipping_method_id
    type: string
    sql: ${TABLE}.OSM_SHIPPING_METHOD_ID
    
  - dimension: parcel_protection
    type: number
    sql: ${TABLE}.PARCEL_PROTECTION
    hidden: true

  - dimension: price_model_type
    type: string
    sql: ${TABLE}.PRICE_MODEL_TYPE
    
  - dimension: rejected_order_yn
    type: string
    sql: ${TABLE}.REJECTED_ORDER_YN
    
  - measure: ship_gmv
    type: sum
    sql: ${TABLE}.SHIP_GMV
    hidden: true

  - measure: ship_mv
    type: sum
    sql: ${TABLE}.SHIP_MV
    hidden: true

  - dimension: shipped_order_yn
    type: string
    sql: ${TABLE}.SHIPPED_ORDER_YN

  - dimension: shipping_address_key
    type: number
    sql: ${TABLE}.SHIPPING_ADDRESS_KEY
    hidden: true

  - dimension: shipping_country_key
    type: number
    sql: ${TABLE}.SHIPPING_COUNTRY_KEY
    hidden: true

  - dimension: started_order_yn
    type: string
    sql: ${TABLE}.STARTED_ORDER_YN

  - dimension: submitted_order_yn
    type: string
    sql: ${TABLE}.SUBMITTED_ORDER_YN

  - measure: order
    type: count
    drill_fields: 
      - oh_order_id
      - oh_checkout_status
      - ${merchant_dim.merch_pricing_ccy} 
      - mv
      - units
  
  - measure: customer
    type: count_distinct 
    sql: ${TABLE}.CUSTOMER_KEY
    hidden: true
    
  - measure: units
    type: avg
    sql: ${TABLE}.UNITS
    
  - measure: gmv
    type: sum
    sql: ${TABLE}.GMV
    
  - measure: mv
    type: sum
    sql: ${TABLE}.MV
    
  - measure: aov
    type: number
    sql: ${mv} / NULLIFZERO(${order})
    
  - measure: gmv_usd_converted
    type: sum
    sql: (CASE 
        WHEN ${merchant_dim.merch_pricing_ccy} = 'GBP' THEN 1.4333 * gmv
        WHEN ${merchant_dim.merch_pricing_ccy} = 'EUR' THEN 1.0987 * gmv
        ELSE 1 * gmv
        END) 
  
  - measure: mv_usd_converted
    type: sum
    sql: (CASE 
        WHEN ${merchant_dim.merch_pricing_ccy} = 'GBP' THEN 1.4333 * mv
        WHEN ${merchant_dim.merch_pricing_ccy} = 'EUR' THEN 1.0987 * mv
        ELSE 1 * mv
        END)    
        
  - measure: aov_usd_converted
    type: number
    sql: ${mv_usd_converted} / NULLIFZERO(${order})
    
  - measure: mv_usd_converted_per_customer
    type: number
    sql: ${mv_usd_converted} / ${customer}