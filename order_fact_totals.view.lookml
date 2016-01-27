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

  - dimension: billing_country_key
    type: number
    sql: ${TABLE}.BILLING_COUNTRY_KEY

  - dimension: cancelled_order_yn
    type: string
    sql: ${TABLE}.CANCELLED_ORDER_YN

  - dimension: checkout_client
    type: string
    sql: ${TABLE}.CHECKOUT_CLIENT

  - dimension: customer_key
    type: number
    sql: ${TABLE}.CUSTOMER_KEY

  - dimension: duty_tax_drawback
    type: number
    sql: ${TABLE}.DUTY_TAX_DRAWBACK

  - dimension: fx_conversion_rate
    type: number
    sql: ${TABLE}.FX_CONVERSION_RATE

  - dimension: gmv
    type: number
    sql: ${TABLE}.GMV

  - dimension: ignore
    type: int
    sql: ${TABLE}."IGNORE"

  - dimension: item_lcp_inflation_duty_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_DUTY_USD

  - dimension: item_lcp_inflation_handling_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_HANDLING_USD

  - dimension: item_lcp_inflation_shipping_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_SHIPPING_USD

  - dimension: item_lcp_inflation_tax_usd
    type: number
    sql: ${TABLE}.ITEM_LCP_INFLATION_TAX_USD

  - dimension: max_num_same_item
    type: int
    sql: ${TABLE}.MAX_NUM_SAME_ITEM

  - dimension: merchant_lcp_margin_total
    type: number
    sql: ${TABLE}.MERCHANT_LCP_MARGIN_TOTAL

  - dimension: mv
    type: number
    sql: ${TABLE}.MV

  - dimension: mv1000_bucket_end
    type: number
    sql: ${TABLE}.MV1000_BUCKET_END

  - dimension: mv1000_bucket_start
    type: int
    sql: ${TABLE}.MV1000_BUCKET_START

  - dimension: mv100_bucket_end
    type: number
    sql: ${TABLE}.MV100_BUCKET_END

  - dimension: mv100_bucket_start
    type: int
    sql: ${TABLE}.MV100_BUCKET_START

  - dimension: mv500_bucket_end
    type: number
    sql: ${TABLE}.MV500_BUCKET_END

  - dimension: mv500_bucket_start
    type: int
    sql: ${TABLE}.MV500_BUCKET_START

  - dimension: mv50_bucket_end
    type: number
    sql: ${TABLE}.MV50_BUCKET_END

  - dimension: mv50_bucket_start
    type: int
    sql: ${TABLE}.MV50_BUCKET_START

  - dimension: mv_bucket_100_end
    type: number
    sql: ${TABLE}.MV_BUCKET_100_END

  - dimension: mv_bucket_100_start
    type: int
    sql: ${TABLE}.MV_BUCKET_100_START

  - dimension: mv_bucket_10_end
    type: number
    sql: ${TABLE}.MV_BUCKET_10_END

  - dimension: mv_bucket_10_start
    type: int
    sql: ${TABLE}.MV_BUCKET_10_START

  - dimension: mv_bucket_25_end
    type: number
    sql: ${TABLE}.MV_BUCKET_25_END

  - dimension: mv_bucket_25_start
    type: int
    sql: ${TABLE}.MV_BUCKET_25_START

  - dimension: mv_bucket_50_end
    type: number
    sql: ${TABLE}.MV_BUCKET_50_END

  - dimension: mv_bucket_50_start
    type: int
    sql: ${TABLE}.MV_BUCKET_50_START

  - dimension: mv_bucket_5_end
    type: number
    sql: ${TABLE}.MV_BUCKET_5_END

  - dimension: mv_bucket_5_start
    type: int
    sql: ${TABLE}.MV_BUCKET_5_START

  - dimension: oh_checkout_status
    type: string
    sql: ${TABLE}.OH_CHECKOUT_STATUS

  - dimension: oh_checkout_status_key
    type: number
    sql: ${TABLE}.OH_CHECKOUT_STATUS_KEY

  - dimension: oh_coupon_code
    type: string
    sql: ${TABLE}.OH_COUPON_CODE

  - dimension: oh_created_date_key
    type: number
    sql: ${TABLE}.OH_CREATED_DATE_KEY

  - dimension: oh_created_hour
    type: int
    sql: ${TABLE}.OH_CREATED_HOUR

  - dimension: oh_created_minute
    type: int
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
    type: int
    sql: ${TABLE}.OH_MERCH_ID

  - dimension: oh_merch_order_id
    type: string
    sql: ${TABLE}.OH_MERCH_ORDER_ID

  - dimension: oh_order_id
    type: string
    sql: ${TABLE}.OH_ORDER_ID

  - dimension: oq_buy_currency_key
    type: number
    sql: ${TABLE}.OQ_BUY_CURRENCY_KEY

  - dimension: oq_buy_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_GRAND_TOT_USD_TOTAL

  - dimension: oq_buy_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_ORDER_DISCOUNT_USD_TOTAL

  - dimension: oq_buy_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_HANDLING_USD_TOTAL

  - dimension: oq_buy_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_SHIPPING_USD_TOTAL

  - dimension: oq_buy_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_HANDLING_USD_TOTAL

  - dimension: oq_buy_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_SHIPPING_USD_TOTAL

  - dimension: oq_buy_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_DISCOUNT_USD_TOTAL

  - dimension: oq_buy_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_FINANCIAL_FEES_USD_TOTAL

  - dimension: oq_buy_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_HANDLING_USD_TOTAL

  - dimension: oq_buy_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_PRODUCT_USD_TOTAL

  - dimension: oq_buy_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_SHIPPING_USD_TOTAL

  - dimension: oq_buy_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TARIFF_USD_TOTAL

  - dimension: oq_buy_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_HANDLING_USD_TOTAL

  - dimension: oq_buy_tot_tpl_shiping_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_SHIPING_USD_TOTAL

  - dimension: oq_buy_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_VAT_USD_TOTAL

  - dimension: oq_buy_vat_as_margin_mccy_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_AS_MARGIN_MCCY_TOTAL

  - dimension: oq_buy_vat_as_margin_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_AS_MARGIN_TOTAL

  - dimension: oq_buy_vat_reduction_mccy_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_REDUCTION_MCCY_TOTAL

  - dimension: oq_buy_vat_reduction_total
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_REDUCTION_TOTAL

  - dimension: oq_e4_x_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_GRAND_TOT_USD_TOTAL

  - dimension: oq_e4_x_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_ORDER_DISCOUNT_USD_TOTAL

  - dimension: oq_e4_x_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COD_HANDLING_USD_TOTAL

  - dimension: oq_e4_x_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COD_SHIPPING_USD_TOTAL

  - dimension: oq_e4_x_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COP_HANDLING_USD_TOTAL

  - dimension: oq_e4_x_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COP_SHIPPING_USD_TOTAL

  - dimension: oq_e4_x_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_DISCOUNT_USD_TOTAL

  - dimension: oq_e4_x_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_FINANCIAL_FEES_USD_TOTAL

  - dimension: oq_e4_x_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_HANDLING_USD_TOTAL

  - dimension: oq_e4_x_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_PRODUCT_USD_TOTAL

  - dimension: oq_e4_x_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_SHIPPING_USD_TOTAL

  - dimension: oq_e4_x_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TARIFF_USD_TOTAL

  - dimension: oq_e4_x_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TPL_HANDLING_USD_TOTAL

  - dimension: oq_e4_x_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TPL_SHIPPING_USD_TOTAL

  - dimension: oq_e4_x_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_VAT_USD_TOTAL

  - dimension: oq_lp_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_GRAND_TOT_USD_TOTAL

  - dimension: oq_lp_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_ORDER_DISCOUNT_USD_TOTAL

  - dimension: oq_lp_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COD_HANDLING_USD_TOTAL

  - dimension: oq_lp_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COD_SHIPPING_USD_TOTAL

  - dimension: oq_lp_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COP_HANDLING_USD_TOTAL

  - dimension: oq_lp_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COP_SHIPPING_USD_TOTAL

  - dimension: oq_lp_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_DISCOUNT_USD_TOTAL

  - dimension: oq_lp_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_FINANCIAL_FEES_USD_TOTAL

  - dimension: oq_lp_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_HANDLING_USD_TOTAL

  - dimension: oq_lp_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_PRODUCT_USD_TOTAL

  - dimension: oq_lp_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_SHIPPING_USD_TOTAL

  - dimension: oq_lp_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TARIFF_USD_TOTAL

  - dimension: oq_lp_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TPL_HANDLING_USD_TOTAL

  - dimension: oq_lp_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TPL_SHIPPING_USD_TOTAL

  - dimension: oq_lp_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_LP_TOT_VAT_USD_TOTAL

  - dimension: oq_mer_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_ORDER_DISCOUNT_USD_TOTAL

  - dimension: oq_mer_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COD_HANDLING_USD_TOTAL

  - dimension: oq_mer_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COD_SHIPPING_USD_TOTAL

  - dimension: oq_mer_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COP_HANDLING_USD_TOTAL

  - dimension: oq_mer_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COP_SHIPPING_USD_TOTAL

  - dimension: oq_mer_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_DISCOUNT_USD_TOTAL

  - dimension: oq_mer_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_FINANCIAL_FEES_USD_TOTAL

  - dimension: oq_mer_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_HANDLING_USD_TOTAL

  - dimension: oq_mer_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_PRODUCT_USD_TOTAL

  - dimension: oq_mer_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_SHIPPING_USD_TOTAL

  - dimension: oq_mer_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TARIFF_USD_TOTAL

  - dimension: oq_mer_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TPL_HANDLING_USD_TOTAL

  - dimension: oq_mer_tot_tpl_shiping_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TPL_SHIPING_USD_TOTAL

  - dimension: oq_mer_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_MER_TOT_VAT_USD_TOTAL

  - dimension: oq_mer_vat_as_margin_total
    type: number
    sql: ${TABLE}.OQ_MER_VAT_AS_MARGIN_TOTAL

  - dimension: oq_mer_vat_reduction_total
    type: number
    sql: ${TABLE}.OQ_MER_VAT_REDUCTION_TOTAL

  - dimension: oq_merchant_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_MERCHANT_GRAND_TOT_USD_TOTAL

  - dimension: oq_mp_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_GRAND_TOT_USD_TOTAL

  - dimension: oq_mp_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_ORDER_DISCOUNT_USD_TOTAL

  - dimension: oq_mp_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COD_HANDLING_USD_TOTAL

  - dimension: oq_mp_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COD_SHIPPING_USD_TOTAL

  - dimension: oq_mp_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COP_HANDLING_USD_TOTAL

  - dimension: oq_mp_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COP_SHIPPING_USD_TOTAL

  - dimension: oq_mp_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_DISCOUNT_USD_TOTAL

  - dimension: oq_mp_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_FINANCIAL_FEES_USD_TOTAL

  - dimension: oq_mp_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_HANDLING_USD_TOTAL

  - dimension: oq_mp_tot_plp_discount_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_PLP_DISCOUNT_TOTAL

  - dimension: oq_mp_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_PRODUCT_USD_TOTAL

  - dimension: oq_mp_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_SHIPPING_USD_TOTAL

  - dimension: oq_mp_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TARIFF_USD_TOTAL

  - dimension: oq_mp_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TPL_HANDLING_USD_TOTAL

  - dimension: oq_mp_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TPL_SHIPPING_USD_TOTAL

  - dimension: oq_mp_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_MP_TOT_VAT_USD_TOTAL

  - dimension: oq_ms_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_GRAND_TOT_USD_TOTAL

  - dimension: oq_ms_order_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_ORDER_DISCOUNT_USD_TOTAL

  - dimension: oq_ms_tot_cod_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COD_HANDLING_USD_TOTAL

  - dimension: oq_ms_tot_cod_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COD_SHIPPING_USD_TOTAL

  - dimension: oq_ms_tot_cop_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COP_HANDLING_USD_TOTAL

  - dimension: oq_ms_tot_cop_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COP_SHIPPING_USD_TOTAL

  - dimension: oq_ms_tot_discount_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_DISCOUNT_USD_TOTAL

  - dimension: oq_ms_tot_financial_fees_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_FINANCIAL_FEES_USD_TOTAL

  - dimension: oq_ms_tot_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_HANDLING_USD_TOTAL

  - dimension: oq_ms_tot_product_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_PRODUCT_USD_TOTAL

  - dimension: oq_ms_tot_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_SHIPPING_USD_TOTAL

  - dimension: oq_ms_tot_tariff_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TARIFF_USD_TOTAL

  - dimension: oq_ms_tot_tpl_handling_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TPL_HANDLING_USD_TOTAL

  - dimension: oq_ms_tot_tpl_shipping_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TPL_SHIPPING_USD_TOTAL

  - dimension: oq_ms_tot_vat_usd_total
    type: number
    sql: ${TABLE}.OQ_MS_TOT_VAT_USD_TOTAL

  - dimension: osm_shipping_method_id
    type: string
    sql: ${TABLE}.OSM_SHIPPING_METHOD_ID

  - dimension: parcel_protection
    type: number
    sql: ${TABLE}.PARCEL_PROTECTION

  - dimension: price_model_type
    type: string
    sql: ${TABLE}.PRICE_MODEL_TYPE

  - dimension: rejected_order_yn
    type: string
    sql: ${TABLE}.REJECTED_ORDER_YN

  - dimension: ship_gmv
    type: number
    sql: ${TABLE}.SHIP_GMV

  - dimension: ship_mv
    type: number
    sql: ${TABLE}.SHIP_MV

  - dimension: shipped_order_yn
    type: string
    sql: ${TABLE}.SHIPPED_ORDER_YN

  - dimension: shipping_address_key
    type: number
    sql: ${TABLE}.SHIPPING_ADDRESS_KEY

  - dimension: shipping_country_key
    type: number
    sql: ${TABLE}.SHIPPING_COUNTRY_KEY

  - dimension: started_order_yn
    type: string
    sql: ${TABLE}.STARTED_ORDER_YN

  - dimension: submitted_order_yn
    type: string
    sql: ${TABLE}.SUBMITTED_ORDER_YN

  - dimension: units
    type: int
    sql: ${TABLE}.UNITS

  - measure: count
    type: count
    drill_fields: []
    
  - dimension: new_vs_existing_customer
    type: string
    sql: |
      CASE WHEN ${TABLE}.OH_CREATED_DATE_KEY != {CUSTOMER_FACT_1.FIRST_ACCEPTED_DATE_KEY} THEN 'Existing' ELSE 'New' END AS new_vs_existing_customer
