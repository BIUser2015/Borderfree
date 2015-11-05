- view: order_fact
  sql_table_name: DW.ORDER_FACT
  fields:

  - dimension: abandoned_order_yn
    sql: ${TABLE}.ABANDONED_ORDER_YN

  - dimension: abandoned_yn
    sql: ${TABLE}.ABANDONED_YN

  - dimension: accepted_order_yn
    sql: ${TABLE}.ACCEPTED_ORDER_YN

  - dimension: billing_address_key
    type: number
    sql: ${TABLE}.BILLING_ADDRESS_KEY

  - dimension: billing_country_key
    type: number
    sql: ${TABLE}.BILLING_COUNTRY_KEY

  - dimension: cancelled_order_yn
    sql: ${TABLE}.CANCELLED_ORDER_YN

  - dimension: catalog_product_key
    type: int
    sql: ${TABLE}.CATALOG_PRODUCT_KEY

  - dimension: category_id
    sql: ${TABLE}.CATEGORY_ID

  - dimension: checkout_client
    sql: ${TABLE}.CHECKOUT_CLIENT

  - dimension: count_line_items_in_order
    type: number
    sql: ${TABLE}.COUNT_LINE_ITEMS_IN_ORDER

  - dimension: count_unique_products_in_order
    type: number
    sql: ${TABLE}.COUNT_UNIQUE_PRODUCTS_IN_ORDER

  - dimension: coupon_key
    type: number
    sql: ${TABLE}.COUPON_KEY

  - dimension: customer_key
    type: number
    sql: ${TABLE}.CUSTOMER_KEY

  - dimension_group: etl_inserted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ETL_INSERTED

  - dimension: etl_job_num
    type: int
    sql: ${TABLE}.ETL_JOB_NUM

  - dimension_group: etl_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ETL_UPDATED

  - dimension: fx_conversion_rate
    type: number
    sql: ${TABLE}.FX_CONVERSION_RATE

  - dimension: gmv
    type: number
    sql: ${TABLE}.GMV

  - dimension: gmv_price_model_type
    sql: ${TABLE}.GMV_PRICE_MODEL_TYPE

  - dimension: ignore
    type: int
    sql: ${TABLE}."IGNORE"

  - dimension: is_kit
    sql: ${TABLE}.IS_KIT

  - dimension: lp_order_confirm_state_key
    type: int
    sql: ${TABLE}.LP_ORDER_CONFIRM_STATE_KEY

  - dimension: manual_db_update_key
    type: int
    sql: ${TABLE}.MANUAL_DB_UPDATE_KEY

  - dimension: merch_key
    type: number
    sql: ${TABLE}.MERCH_KEY

  - dimension: merchant_category_key
    type: number
    sql: ${TABLE}.MERCHANT_CATEGORY_KEY

  - dimension: mm_vat_inclusive_flag
    sql: ${TABLE}.MM_VAT_INCLUSIVE_FLAG

  - dimension: mv
    type: number
    sql: ${TABLE}.MV

  - dimension: obp_billing_addr_hash_value
    sql: ${TABLE}.OBP_BILLING_ADDR_HASH_VALUE

  - dimension: obp_billing_country_code
    sql: ${TABLE}.OBP_BILLING_COUNTRY_CODE

  - dimension: obp_billing_email
    sql: ${TABLE}.OBP_BILLING_EMAIL

  - dimension: obp_billing_profile_id
    type: int
    sql: ${TABLE}.OBP_BILLING_PROFILE_ID

  - dimension: obp_shipping_addr_hash_value
    sql: ${TABLE}.OBP_SHIPPING_ADDR_HASH_VALUE

  - dimension: obp_shipping_country_code
    sql: ${TABLE}.OBP_SHIPPING_COUNTRY_CODE

  - dimension: obp_shipping_locale
    sql: ${TABLE}.OBP_SHIPPING_LOCALE

  - dimension: oh_checkout_status
    sql: ${TABLE}.OH_CHECKOUT_STATUS

  - dimension: oh_checkout_status_key
    type: number
    sql: ${TABLE}.OH_CHECKOUT_STATUS_KEY

  - dimension: oh_combined_shipping_id
    type: int
    sql: ${TABLE}.OH_COMBINED_SHIPPING_ID

  - dimension: oh_coupon_code
    sql: ${TABLE}.OH_COUPON_CODE

  - dimension: oh_created_date_key
    type: number
    sql: ${TABLE}.OH_CREATED_DATE_KEY

  - dimension: oh_created_time
    sql: ${TABLE}.OH_CREATED_TIME

  - dimension: oh_credit_card_key
    type: number
    sql: ${TABLE}.OH_CREDIT_CARD_KEY

  - dimension: oh_credit_card_type
    sql: ${TABLE}.OH_CREDIT_CARD_TYPE

  - dimension: oh_ddu
    sql: ${TABLE}.OH_DDU

  - dimension: oh_dnob
    sql: ${TABLE}.OH_DNOB

  - dimension: oh_envoy_version
    sql: ${TABLE}.OH_ENVOY_VERSION

  - dimension: oh_fiscal_created_date_key
    type: number
    sql: ${TABLE}.OH_FISCAL_CREATED_DATE_KEY

  - dimension: oh_gss_tran_id
    sql: ${TABLE}.OH_GSS_TRAN_ID

  - dimension: oh_hub_id
    type: int
    sql: ${TABLE}.OH_HUB_ID

  - dimension: oh_is_pricebook
    sql: ${TABLE}.OH_IS_PRICEBOOK

  - dimension: oh_last_lp_confirm_result
    sql: ${TABLE}.OH_LAST_LP_CONFIRM_RESULT

  - dimension: oh_last_restriction_code
    sql: ${TABLE}.OH_LAST_RESTRICTION_CODE

  - dimension: oh_last_update_date_key
    type: number
    sql: ${TABLE}.OH_LAST_UPDATE_DATE_KEY

  - dimension: oh_last_update_time
    sql: ${TABLE}.OH_LAST_UPDATE_TIME

  - dimension: oh_lcc_method
    sql: ${TABLE}.OH_LCC_METHOD

  - dimension: oh_lcp_rule_id
    type: int
    sql: ${TABLE}.OH_LCP_RULE_ID

  - dimension: oh_lp_confirm_attempts
    type: int
    sql: ${TABLE}.OH_LP_CONFIRM_ATTEMPTS

  - dimension: oh_lp_expiry_date_key
    type: number
    sql: ${TABLE}.OH_LP_EXPIRY_DATE_KEY

  - dimension: oh_lp_expiry_time
    sql: ${TABLE}.OH_LP_EXPIRY_TIME

  - dimension: oh_lp_id
    type: int
    sql: ${TABLE}.OH_LP_ID

  - dimension: oh_lp_order_confirm_state
    sql: ${TABLE}.OH_LP_ORDER_CONFIRM_STATE

  - dimension: oh_lp_order_id
    sql: ${TABLE}.OH_LP_ORDER_ID

  - dimension: oh_merch_confirmed
    sql: ${TABLE}.OH_MERCH_CONFIRMED

  - dimension: oh_merch_id
    type: int
    sql: ${TABLE}.OH_MERCH_ID

  - dimension: oh_merch_order_id
    sql: ${TABLE}.OH_MERCH_ORDER_ID

  - dimension: oh_order_id
    sql: ${TABLE}.OH_ORDER_ID

  - dimension: oh_order_state
    sql: ${TABLE}.OH_ORDER_STATE

  - dimension: oh_payment_id
    sql: ${TABLE}.OH_PAYMENT_ID

  - dimension: oh_po_file_created_date_key
    type: number
    sql: ${TABLE}.OH_PO_FILE_CREATED_DATE_KEY

  - dimension: oh_po_file_created_time
    sql: ${TABLE}.OH_PO_FILE_CREATED_TIME

  - dimension: oh_retry_group_id
    sql: ${TABLE}.OH_RETRY_GROUP_ID

  - dimension: oh_settlement_type
    sql: ${TABLE}.OH_SETTLEMENT_TYPE

  - dimension: oh_submitted_date_key
    type: number
    sql: ${TABLE}.OH_SUBMITTED_DATE_KEY

  - dimension: oh_submitted_time
    sql: ${TABLE}.OH_SUBMITTED_TIME

  - dimension: oh_tpl_shipping_id
    type: int
    sql: ${TABLE}.OH_TPL_SHIPPING_ID

  - dimension: oh_updated_date_key
    type: number
    sql: ${TABLE}.OH_UPDATED_DATE_KEY

  - dimension: oh_updated_time
    sql: ${TABLE}.OH_UPDATED_TIME

  - dimension: oi_catalog_product_id
    sql: ${TABLE}.OI_CATALOG_PRODUCT_ID

  - dimension: oi_coo
    sql: ${TABLE}.OI_COO

  - dimension: oi_derived_from_id
    type: int
    sql: ${TABLE}.OI_DERIVED_FROM_ID

  - dimension: oi_hs_code
    sql: ${TABLE}.OI_HS_CODE

  - dimension: oi_inventory_status_1
    sql: ${TABLE}.OI_INVENTORY_STATUS_1

  - dimension: oi_is_furniture
    sql: ${TABLE}.OI_IS_FURNITURE

  - dimension: oi_is_fws_permit_req
    sql: ${TABLE}.OI_IS_FWS_PERMIT_REQ

  - dimension: oi_item_id
    type: int
    sql: ${TABLE}.OI_ITEM_ID

  - dimension: oi_logistics_state
    sql: ${TABLE}.OI_LOGISTICS_STATE

  - dimension: oi_logistics_state_reason
    sql: ${TABLE}.OI_LOGISTICS_STATE_REASON

  - dimension: oi_lp_parcel_id
    sql: ${TABLE}.OI_LP_PARCEL_ID

  - dimension: oi_merch_parcel_id
    sql: ${TABLE}.OI_MERCH_PARCEL_ID

  - dimension: oi_merchant_sku
    sql: ${TABLE}.OI_MERCHANT_SKU

  - dimension: oi_parcel_process_state
    sql: ${TABLE}.OI_PARCEL_PROCESS_STATE

  - dimension: oi_quantity
    type: number
    sql: ${TABLE}.OI_QUANTITY

  - dimension: oi_replaced
    sql: ${TABLE}.OI_REPLACED

  - dimension: oi_restricted
    sql: ${TABLE}.OI_RESTRICTED

  - dimension_group: oi_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OI_UPDATED

  - dimension: oip_cod_handling
    type: number
    sql: ${TABLE}.OIP_COD_HANDLING

  - dimension: oip_cod_handling_usd
    type: number
    sql: ${TABLE}.OIP_COD_HANDLING_USD

  - dimension: oip_cod_shipping
    type: number
    sql: ${TABLE}.OIP_COD_SHIPPING

  - dimension: oip_cod_shipping_usd
    type: number
    sql: ${TABLE}.OIP_COD_SHIPPING_USD

  - dimension: oip_cop_handling
    type: number
    sql: ${TABLE}.OIP_COP_HANDLING

  - dimension: oip_cop_handling_usd
    type: number
    sql: ${TABLE}.OIP_COP_HANDLING_USD

  - dimension: oip_cop_shipping
    type: number
    sql: ${TABLE}.OIP_COP_SHIPPING

  - dimension: oip_cop_shipping_usd
    type: number
    sql: ${TABLE}.OIP_COP_SHIPPING_USD

  - dimension: oip_discount
    type: number
    sql: ${TABLE}.OIP_DISCOUNT

  - dimension: oip_discount_prorated
    type: number
    sql: ${TABLE}.OIP_DISCOUNT_PRORATED

  - dimension: oip_discount_prorated_usd
    type: number
    sql: ${TABLE}.OIP_DISCOUNT_PRORATED_USD

  - dimension: oip_discount_usd
    type: number
    sql: ${TABLE}.OIP_DISCOUNT_USD

  - dimension: oip_dutiable_price
    type: number
    sql: ${TABLE}.OIP_DUTIABLE_PRICE

  - dimension: oip_dutiable_price_usd
    type: number
    sql: ${TABLE}.OIP_DUTIABLE_PRICE_USD

  - dimension: oip_e4_x_cod_handling_usd
    type: number
    sql: ${TABLE}.OIP_E4X_COD_HANDLING_USD

  - dimension: oip_e4_x_cod_shipping_usd
    type: number
    sql: ${TABLE}.OIP_E4X_COD_SHIPPING_USD

  - dimension: oip_e4_x_cop_handling_usd
    type: number
    sql: ${TABLE}.OIP_E4X_COP_HANDLING_USD

  - dimension: oip_e4_x_cop_shipping_usd
    type: number
    sql: ${TABLE}.OIP_E4X_COP_SHIPPING_USD

  - dimension: oip_e4_x_discount_prorated_usd
    type: number
    sql: ${TABLE}.OIP_E4X_DISCOUNT_PRORATED_USD

  - dimension: oip_e4_x_discount_usd
    type: number
    sql: ${TABLE}.OIP_E4X_DISCOUNT_USD

  - dimension: oip_e4_x_dutiable_price_usd
    type: number
    sql: ${TABLE}.OIP_E4X_DUTIABLE_PRICE_USD

  - dimension: oip_e4_x_fee_rate_id
    sql: ${TABLE}.OIP_E4X_FEE_RATE_ID

  - dimension: oip_e4_x_fee_rate_value_usd
    type: number
    sql: ${TABLE}.OIP_E4X_FEE_RATE_VALUE_USD

  - dimension: oip_e4_x_financial_fees_usd
    type: number
    sql: ${TABLE}.OIP_E4X_FINANCIAL_FEES_USD

  - dimension: oip_e4_x_financial_state
    sql: ${TABLE}.OIP_E4X_FINANCIAL_STATE

  - dimension: oip_e4_x_handling_usd
    type: number
    sql: ${TABLE}.OIP_E4X_HANDLING_USD

  - dimension: oip_e4_x_list_price_usd
    type: number
    sql: ${TABLE}.OIP_E4X_LIST_PRICE_USD

  - dimension: oip_e4_x_price_item_id
    type: int
    sql: ${TABLE}.OIP_E4X_PRICE_ITEM_ID

  - dimension: oip_e4_x_sale_price_usd
    type: number
    sql: ${TABLE}.OIP_E4X_SALE_PRICE_USD

  - dimension: oip_e4_x_shipping_usd
    type: number
    sql: ${TABLE}.OIP_E4X_SHIPPING_USD

  - dimension: oip_e4_x_tariff_usd
    type: number
    sql: ${TABLE}.OIP_E4X_TARIFF_USD

  - dimension: oip_e4_x_tpl_handling_usd
    type: number
    sql: ${TABLE}.OIP_E4X_TPL_HANDLING_USD

  - dimension: oip_e4_x_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OIP_E4X_TPL_SHIPPING_USD

  - dimension: oip_e4_x_vat_usd
    type: number
    sql: ${TABLE}.OIP_E4X_VAT_USD

  - dimension: oip_fee_rate_id
    sql: ${TABLE}.OIP_FEE_RATE_ID

  - dimension: oip_fee_rate_id_usd
    type: int
    sql: ${TABLE}.OIP_FEE_RATE_ID_USD

  - dimension: oip_fee_rate_value
    type: number
    sql: ${TABLE}.OIP_FEE_RATE_VALUE

  - dimension: oip_fee_rate_value_usd
    type: number
    sql: ${TABLE}.OIP_FEE_RATE_VALUE_USD

  - dimension: oip_financial_fees
    type: number
    sql: ${TABLE}.OIP_FINANCIAL_FEES

  - dimension: oip_financial_fees_usd
    type: number
    sql: ${TABLE}.OIP_FINANCIAL_FEES_USD

  - dimension: oip_financial_state
    sql: ${TABLE}.OIP_FINANCIAL_STATE

  - dimension: oip_financial_state_usd
    type: number
    sql: ${TABLE}.OIP_FINANCIAL_STATE_USD

  - dimension: oip_handling
    type: number
    sql: ${TABLE}.OIP_HANDLING

  - dimension: oip_handling_usd
    type: number
    sql: ${TABLE}.OIP_HANDLING_USD

  - dimension: oip_list_price
    type: number
    sql: ${TABLE}.OIP_LIST_PRICE

  - dimension: oip_list_price_usd
    type: number
    sql: ${TABLE}.OIP_LIST_PRICE_USD

  - dimension: oip_lp_cod_handling_usd
    type: number
    sql: ${TABLE}.OIP_LP_COD_HANDLING_USD

  - dimension: oip_lp_cod_shipping_usd
    type: number
    sql: ${TABLE}.OIP_LP_COD_SHIPPING_USD

  - dimension: oip_lp_cop_handling_usd
    type: number
    sql: ${TABLE}.OIP_LP_COP_HANDLING_USD

  - dimension: oip_lp_cop_shipping_usd
    type: number
    sql: ${TABLE}.OIP_LP_COP_SHIPPING_USD

  - dimension: oip_lp_discount_prorated_usd
    type: number
    sql: ${TABLE}.OIP_LP_DISCOUNT_PRORATED_USD

  - dimension: oip_lp_discount_usd
    type: number
    sql: ${TABLE}.OIP_LP_DISCOUNT_USD

  - dimension: oip_lp_dutiable_price_usd
    type: number
    sql: ${TABLE}.OIP_LP_DUTIABLE_PRICE_USD

  - dimension: oip_lp_fee_rate_id
    sql: ${TABLE}.OIP_LP_FEE_RATE_ID

  - dimension: oip_lp_fee_rate_value_usd
    type: number
    sql: ${TABLE}.OIP_LP_FEE_RATE_VALUE_USD

  - dimension: oip_lp_financial_fees_usd
    type: number
    sql: ${TABLE}.OIP_LP_FINANCIAL_FEES_USD

  - dimension: oip_lp_financial_state
    sql: ${TABLE}.OIP_LP_FINANCIAL_STATE

  - dimension: oip_lp_handling_usd
    type: number
    sql: ${TABLE}.OIP_LP_HANDLING_USD

  - dimension: oip_lp_list_price_usd
    type: number
    sql: ${TABLE}.OIP_LP_LIST_PRICE_USD

  - dimension: oip_lp_price_item_id
    type: int
    sql: ${TABLE}.OIP_LP_PRICE_ITEM_ID

  - dimension: oip_lp_sale_price_usd
    type: number
    sql: ${TABLE}.OIP_LP_SALE_PRICE_USD

  - dimension: oip_lp_shipping_usd
    type: number
    sql: ${TABLE}.OIP_LP_SHIPPING_USD

  - dimension: oip_lp_tariff_usd
    type: number
    sql: ${TABLE}.OIP_LP_TARIFF_USD

  - dimension: oip_lp_tpl_handling_usd
    type: number
    sql: ${TABLE}.OIP_LP_TPL_HANDLING_USD

  - dimension: oip_lp_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OIP_LP_TPL_SHIPPING_USD

  - dimension: oip_lp_vat_usd
    type: number
    sql: ${TABLE}.OIP_LP_VAT_USD

  - dimension: oip_mer_vat_as_margin
    type: number
    sql: ${TABLE}.OIP_MER_VAT_AS_MARGIN

  - dimension: oip_mer_vat_reduction
    type: number
    sql: ${TABLE}.OIP_MER_VAT_REDUCTION

  - dimension: oip_mp_cod_handling_usd
    type: number
    sql: ${TABLE}.OIP_MP_COD_HANDLING_USD

  - dimension: oip_mp_cod_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MP_COD_SHIPPING_USD

  - dimension: oip_mp_cop_handling_usd
    type: number
    sql: ${TABLE}.OIP_MP_COP_HANDLING_USD

  - dimension: oip_mp_cop_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MP_COP_SHIPPING_USD

  - dimension: oip_mp_discount_prorated_usd
    type: number
    sql: ${TABLE}.OIP_MP_DISCOUNT_PRORATED_USD

  - dimension: oip_mp_discount_usd
    type: number
    sql: ${TABLE}.OIP_MP_DISCOUNT_USD

  - dimension: oip_mp_dutiable_price_usd
    type: number
    sql: ${TABLE}.OIP_MP_DUTIABLE_PRICE_USD

  - dimension: oip_mp_fee_rate_id
    sql: ${TABLE}.OIP_MP_FEE_RATE_ID

  - dimension: oip_mp_fee_rate_value_usd
    type: number
    sql: ${TABLE}.OIP_MP_FEE_RATE_VALUE_USD

  - dimension: oip_mp_financial_fees_usd
    type: number
    sql: ${TABLE}.OIP_MP_FINANCIAL_FEES_USD

  - dimension: oip_mp_financial_state
    sql: ${TABLE}.OIP_MP_FINANCIAL_STATE

  - dimension: oip_mp_handling_usd
    type: number
    sql: ${TABLE}.OIP_MP_HANDLING_USD

  - dimension: oip_mp_list_price_usd
    type: number
    sql: ${TABLE}.OIP_MP_LIST_PRICE_USD

  - dimension: oip_mp_plp_discount_usd
    type: number
    sql: ${TABLE}.OIP_MP_PLP_DISCOUNT_USD

  - dimension: oip_mp_price_item_id
    type: int
    sql: ${TABLE}.OIP_MP_PRICE_ITEM_ID

  - dimension: oip_mp_sale_price_usd
    type: number
    sql: ${TABLE}.OIP_MP_SALE_PRICE_USD

  - dimension: oip_mp_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MP_SHIPPING_USD

  - dimension: oip_mp_tariff_usd
    type: number
    sql: ${TABLE}.OIP_MP_TARIFF_USD

  - dimension: oip_mp_tpl_handling_usd
    type: number
    sql: ${TABLE}.OIP_MP_TPL_HANDLING_USD

  - dimension: oip_mp_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MP_TPL_SHIPPING_USD

  - dimension: oip_mp_vat_usd
    type: number
    sql: ${TABLE}.OIP_MP_VAT_USD

  - dimension: oip_mpp_cod_handling_usd
    type: number
    sql: ${TABLE}.OIP_MPP_COD_HANDLING_USD

  - dimension: oip_mpp_cod_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MPP_COD_SHIPPING_USD

  - dimension: oip_mpp_cop_handling_usd
    type: number
    sql: ${TABLE}.OIP_MPP_COP_HANDLING_USD

  - dimension: oip_mpp_cop_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MPP_COP_SHIPPING_USD

  - dimension: oip_mpp_discount_prorated_usd
    type: number
    sql: ${TABLE}.OIP_MPP_DISCOUNT_PRORATED_USD

  - dimension: oip_mpp_discount_usd
    type: number
    sql: ${TABLE}.OIP_MPP_DISCOUNT_USD

  - dimension: oip_mpp_dutiable_price_usd
    type: number
    sql: ${TABLE}.OIP_MPP_DUTIABLE_PRICE_USD

  - dimension: oip_mpp_fee_rate_id
    sql: ${TABLE}.OIP_MPP_FEE_RATE_ID

  - dimension: oip_mpp_fee_rate_value_usd
    type: number
    sql: ${TABLE}.OIP_MPP_FEE_RATE_VALUE_USD

  - dimension: oip_mpp_financial_fees_usd
    type: number
    sql: ${TABLE}.OIP_MPP_FINANCIAL_FEES_USD

  - dimension: oip_mpp_financial_state
    sql: ${TABLE}.OIP_MPP_FINANCIAL_STATE

  - dimension: oip_mpp_handling_usd
    type: number
    sql: ${TABLE}.OIP_MPP_HANDLING_USD

  - dimension: oip_mpp_list_price_usd
    type: number
    sql: ${TABLE}.OIP_MPP_LIST_PRICE_USD

  - dimension: oip_mpp_price_item_id
    type: int
    sql: ${TABLE}.OIP_MPP_PRICE_ITEM_ID

  - dimension: oip_mpp_sale_price_usd
    type: number
    sql: ${TABLE}.OIP_MPP_SALE_PRICE_USD

  - dimension: oip_mpp_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MPP_SHIPPING_USD

  - dimension: oip_mpp_tariff_usd
    type: number
    sql: ${TABLE}.OIP_MPP_TARIFF_USD

  - dimension: oip_mpp_tpl_handling_usd
    type: number
    sql: ${TABLE}.OIP_MPP_TPL_HANDLING_USD

  - dimension: oip_mpp_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MPP_TPL_SHIPPING_USD

  - dimension: oip_mpp_vat_usd
    type: number
    sql: ${TABLE}.OIP_MPP_VAT_USD

  - dimension: oip_ms_cod_handling_usd
    type: number
    sql: ${TABLE}.OIP_MS_COD_HANDLING_USD

  - dimension: oip_ms_cod_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MS_COD_SHIPPING_USD

  - dimension: oip_ms_cop_handling_usd
    type: number
    sql: ${TABLE}.OIP_MS_COP_HANDLING_USD

  - dimension: oip_ms_cop_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MS_COP_SHIPPING_USD

  - dimension: oip_ms_discount_prorated_usd
    type: number
    sql: ${TABLE}.OIP_MS_DISCOUNT_PRORATED_USD

  - dimension: oip_ms_discount_usd
    type: number
    sql: ${TABLE}.OIP_MS_DISCOUNT_USD

  - dimension: oip_ms_dutiable_price_usd
    type: number
    sql: ${TABLE}.OIP_MS_DUTIABLE_PRICE_USD

  - dimension: oip_ms_fee_rate_id
    sql: ${TABLE}.OIP_MS_FEE_RATE_ID

  - dimension: oip_ms_fee_rate_value_usd
    type: number
    sql: ${TABLE}.OIP_MS_FEE_RATE_VALUE_USD

  - dimension: oip_ms_financial_fees_usd
    type: number
    sql: ${TABLE}.OIP_MS_FINANCIAL_FEES_USD

  - dimension: oip_ms_financial_state
    sql: ${TABLE}.OIP_MS_FINANCIAL_STATE

  - dimension: oip_ms_handling_usd
    type: number
    sql: ${TABLE}.OIP_MS_HANDLING_USD

  - dimension: oip_ms_list_price_usd
    type: number
    sql: ${TABLE}.OIP_MS_LIST_PRICE_USD

  - dimension: oip_ms_price_item_id
    type: int
    sql: ${TABLE}.OIP_MS_PRICE_ITEM_ID

  - dimension: oip_ms_sale_price_usd
    type: number
    sql: ${TABLE}.OIP_MS_SALE_PRICE_USD

  - dimension: oip_ms_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MS_SHIPPING_USD

  - dimension: oip_ms_tariff_usd
    type: number
    sql: ${TABLE}.OIP_MS_TARIFF_USD

  - dimension: oip_ms_tpl_handling_usd
    type: number
    sql: ${TABLE}.OIP_MS_TPL_HANDLING_USD

  - dimension: oip_ms_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OIP_MS_TPL_SHIPPING_USD

  - dimension: oip_ms_vat_usd
    type: number
    sql: ${TABLE}.OIP_MS_VAT_USD

  - dimension: oip_price_item_id
    type: int
    sql: ${TABLE}.OIP_PRICE_ITEM_ID

  - dimension: oip_sale_price
    type: number
    sql: ${TABLE}.OIP_SALE_PRICE

  - dimension: oip_sale_price_usd
    type: number
    sql: ${TABLE}.OIP_SALE_PRICE_USD

  - dimension: oip_shipping
    type: number
    sql: ${TABLE}.OIP_SHIPPING

  - dimension: oip_shipping_usd
    type: number
    sql: ${TABLE}.OIP_SHIPPING_USD

  - dimension: oip_tariff
    type: number
    sql: ${TABLE}.OIP_TARIFF

  - dimension: oip_tariff_usd
    type: number
    sql: ${TABLE}.OIP_TARIFF_USD

  - dimension: oip_tpl_handling
    type: number
    sql: ${TABLE}.OIP_TPL_HANDLING

  - dimension: oip_tpl_handling_usd
    type: number
    sql: ${TABLE}.OIP_TPL_HANDLING_USD

  - dimension: oip_tpl_shipping
    type: number
    sql: ${TABLE}.OIP_TPL_SHIPPING

  - dimension: oip_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OIP_TPL_SHIPPING_USD

  - dimension: oip_vat
    type: number
    sql: ${TABLE}.OIP_VAT

  - dimension: oip_vat_as_margin
    type: number
    sql: ${TABLE}.OIP_VAT_AS_MARGIN

  - dimension: oip_vat_reduction
    type: number
    sql: ${TABLE}.OIP_VAT_REDUCTION

  - dimension: oip_vat_usd
    type: number
    sql: ${TABLE}.OIP_VAT_USD

  - dimension: oipm_cod_handling_usd
    type: number
    sql: ${TABLE}.OIPM_COD_HANDLING_USD

  - dimension: oipm_cod_shipping_usd
    type: number
    sql: ${TABLE}.OIPM_COD_SHIPPING_USD

  - dimension: oipm_cop_handling_usd
    type: number
    sql: ${TABLE}.OIPM_COP_HANDLING_USD

  - dimension: oipm_cop_shipping_usd
    type: number
    sql: ${TABLE}.OIPM_COP_SHIPPING_USD

  - dimension: oipm_discount_prorated_usd
    type: number
    sql: ${TABLE}.OIPM_DISCOUNT_PRORATED_USD

  - dimension: oipm_discount_usd
    type: number
    sql: ${TABLE}.OIPM_DISCOUNT_USD

  - dimension: oipm_dutiable_price_usd
    type: number
    sql: ${TABLE}.OIPM_DUTIABLE_PRICE_USD

  - dimension: oipm_fee_rate_id_usd
    sql: ${TABLE}.OIPM_FEE_RATE_ID_USD

  - dimension: oipm_fee_rate_value_usd
    type: number
    sql: ${TABLE}.OIPM_FEE_RATE_VALUE_USD

  - dimension: oipm_financial_fees_usd
    type: number
    sql: ${TABLE}.OIPM_FINANCIAL_FEES_USD

  - dimension: oipm_financial_state_usd
    sql: ${TABLE}.OIPM_FINANCIAL_STATE_USD

  - dimension: oipm_handling_usd
    type: number
    sql: ${TABLE}.OIPM_HANDLING_USD

  - dimension: oipm_list_price_usd
    type: number
    sql: ${TABLE}.OIPM_LIST_PRICE_USD

  - dimension: oipm_price_item_id
    type: int
    sql: ${TABLE}.OIPM_PRICE_ITEM_ID

  - dimension: oipm_sale_price_usd
    type: number
    sql: ${TABLE}.OIPM_SALE_PRICE_USD

  - dimension: oipm_shipping_usd
    type: number
    sql: ${TABLE}.OIPM_SHIPPING_USD

  - dimension: oipm_tariff_usd
    type: number
    sql: ${TABLE}.OIPM_TARIFF_USD

  - dimension: oipm_tpl_handling_usd
    type: number
    sql: ${TABLE}.OIPM_TPL_HANDLING_USD

  - dimension: oipm_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OIPM_TPL_SHIPPING_USD

  - dimension: oipm_vat_usd
    type: number
    sql: ${TABLE}.OIPM_VAT_USD

  - dimension: op_frn
    sql: ${TABLE}.OP_FRN

  - dimension: opt_in_borderfree
    sql: ${TABLE}.OPT_IN_BORDERFREE

  - dimension: opt_in_merch
    sql: ${TABLE}.OPT_IN_MERCH

  - dimension: oq_buy_activity_id
    type: int
    sql: ${TABLE}.OQ_BUY_ACTIVITY_ID

  - dimension: oq_buy_created_date_key
    type: number
    sql: ${TABLE}.OQ_BUY_CREATED_DATE_KEY

  - dimension: oq_buy_currency
    sql: ${TABLE}.OQ_BUY_CURRENCY

  - dimension: oq_buy_currency_key
    type: number
    sql: ${TABLE}.OQ_BUY_CURRENCY_KEY

  - dimension: oq_buy_grand_tot
    type: number
    sql: ${TABLE}.OQ_BUY_GRAND_TOT

  - dimension: oq_buy_grand_tot_usd
    type: number
    sql: ${TABLE}.OQ_BUY_GRAND_TOT_USD

  - dimension: oq_buy_gss_quote_id
    type: int
    sql: ${TABLE}.OQ_BUY_GSS_QUOTE_ID

  - dimension: oq_buy_logistics_quote_id
    sql: ${TABLE}.OQ_BUY_LOGISTICS_QUOTE_ID

  - dimension: oq_buy_order_discount
    type: number
    sql: ${TABLE}.OQ_BUY_ORDER_DISCOUNT

  - dimension: oq_buy_order_discount_usd
    type: number
    sql: ${TABLE}.OQ_BUY_ORDER_DISCOUNT_USD

  - dimension: oq_buy_quote_id
    type: int
    sql: ${TABLE}.OQ_BUY_QUOTE_ID

  - dimension: oq_buy_status
    sql: ${TABLE}.OQ_BUY_STATUS

  - dimension: oq_buy_tot_cod_handling
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_HANDLING

  - dimension: oq_buy_tot_cod_handling_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_HANDLING_USD

  - dimension: oq_buy_tot_cod_shipping
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_SHIPPING

  - dimension: oq_buy_tot_cod_shipping_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COD_SHIPPING_USD

  - dimension: oq_buy_tot_cop_handling
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_HANDLING

  - dimension: oq_buy_tot_cop_handling_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_HANDLING_USD

  - dimension: oq_buy_tot_cop_shipping
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_SHIPPING

  - dimension: oq_buy_tot_cop_shipping_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_COP_SHIPPING_USD

  - dimension: oq_buy_tot_discount
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_DISCOUNT

  - dimension: oq_buy_tot_discount_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_DISCOUNT_USD

  - dimension: oq_buy_tot_financial_fees
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_FINANCIAL_FEES

  - dimension: oq_buy_tot_financial_fees_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_FINANCIAL_FEES_USD

  - dimension: oq_buy_tot_handling
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_HANDLING

  - dimension: oq_buy_tot_handling_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_HANDLING_USD

  - dimension: oq_buy_tot_product
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_PRODUCT

  - dimension: oq_buy_tot_product_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_PRODUCT_USD

  - dimension: oq_buy_tot_shipping
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_SHIPPING

  - dimension: oq_buy_tot_shipping_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_SHIPPING_USD

  - dimension: oq_buy_tot_tariff
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TARIFF

  - dimension: oq_buy_tot_tariff_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TARIFF_USD

  - dimension: oq_buy_tot_tpl_handling
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_HANDLING

  - dimension: oq_buy_tot_tpl_handling_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_HANDLING_USD

  - dimension: oq_buy_tot_tpl_shiping_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_SHIPING_USD

  - dimension: oq_buy_tot_tpl_shipping
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_TPL_SHIPPING

  - dimension: oq_buy_tot_vat
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_VAT

  - dimension: oq_buy_tot_vat_usd
    type: number
    sql: ${TABLE}.OQ_BUY_TOT_VAT_USD

  - dimension: oq_buy_type
    sql: ${TABLE}.OQ_BUY_TYPE

  - dimension: oq_buy_vat_as_margin
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_AS_MARGIN

  - dimension: oq_buy_vat_as_margin_mccy
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_AS_MARGIN_MCCY

  - dimension: oq_buy_vat_reduction
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_REDUCTION

  - dimension: oq_buy_vat_reduction_mccy
    type: number
    sql: ${TABLE}.OQ_BUY_VAT_REDUCTION_MCCY

  - dimension: oq_e4_x_activity_id
    type: int
    sql: ${TABLE}.OQ_E4X_ACTIVITY_ID

  - dimension: oq_e4_x_created_date_key
    type: number
    sql: ${TABLE}.OQ_E4X_CREATED_DATE_KEY

  - dimension: oq_e4_x_currency
    sql: ${TABLE}.OQ_E4X_CURRENCY

  - dimension: oq_e4_x_currency_key
    type: number
    sql: ${TABLE}.OQ_E4X_CURRENCY_KEY

  - dimension: oq_e4_x_grand_tot_usd
    type: number
    sql: ${TABLE}.OQ_E4X_GRAND_TOT_USD

  - dimension: oq_e4_x_order_discount_usd
    type: number
    sql: ${TABLE}.OQ_E4X_ORDER_DISCOUNT_USD

  - dimension: oq_e4_x_quote_id
    type: int
    sql: ${TABLE}.OQ_E4X_QUOTE_ID

  - dimension: oq_e4_x_status
    sql: ${TABLE}.OQ_E4X_STATUS

  - dimension: oq_e4_x_tot_cod_handling_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COD_HANDLING_USD

  - dimension: oq_e4_x_tot_cod_shipping_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COD_SHIPPING_USD

  - dimension: oq_e4_x_tot_cop_handling_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COP_HANDLING_USD

  - dimension: oq_e4_x_tot_cop_shipping_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_COP_SHIPPING_USD

  - dimension: oq_e4_x_tot_discount_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_DISCOUNT_USD

  - dimension: oq_e4_x_tot_financial_fees_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_FINANCIAL_FEES_USD

  - dimension: oq_e4_x_tot_handling_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_HANDLING_USD

  - dimension: oq_e4_x_tot_product_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_PRODUCT_USD

  - dimension: oq_e4_x_tot_shipping_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_SHIPPING_USD

  - dimension: oq_e4_x_tot_tariff_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TARIFF_USD

  - dimension: oq_e4_x_tot_tpl_handling_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TPL_HANDLING_USD

  - dimension: oq_e4_x_tot_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_TPL_SHIPPING_USD

  - dimension: oq_e4_x_tot_vat_usd
    type: number
    sql: ${TABLE}.OQ_E4X_TOT_VAT_USD

  - dimension: oq_e4_x_type
    sql: ${TABLE}.OQ_E4X_TYPE

  - dimension: oq_lp_activity_id
    type: int
    sql: ${TABLE}.OQ_LP_ACTIVITY_ID

  - dimension: oq_lp_bt_calculation_id
    sql: ${TABLE}.OQ_LP_BT_CALCULATION_ID

  - dimension: oq_lp_created_date_key
    type: number
    sql: ${TABLE}.OQ_LP_CREATED_DATE_KEY

  - dimension: oq_lp_currency
    sql: ${TABLE}.OQ_LP_CURRENCY

  - dimension: oq_lp_currency_key
    type: number
    sql: ${TABLE}.OQ_LP_CURRENCY_KEY

  - dimension: oq_lp_grand_tot_usd
    type: number
    sql: ${TABLE}.OQ_LP_GRAND_TOT_USD

  - dimension: oq_lp_order_discount_usd
    type: number
    sql: ${TABLE}.OQ_LP_ORDER_DISCOUNT_USD

  - dimension: oq_lp_quote_id
    type: int
    sql: ${TABLE}.OQ_LP_QUOTE_ID

  - dimension: oq_lp_status
    sql: ${TABLE}.OQ_LP_STATUS

  - dimension: oq_lp_tot_cod_handling_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COD_HANDLING_USD

  - dimension: oq_lp_tot_cod_shipping_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COD_SHIPPING_USD

  - dimension: oq_lp_tot_cop_handling_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COP_HANDLING_USD

  - dimension: oq_lp_tot_cop_shipping_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_COP_SHIPPING_USD

  - dimension: oq_lp_tot_discount_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_DISCOUNT_USD

  - dimension: oq_lp_tot_financial_fees_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_FINANCIAL_FEES_USD

  - dimension: oq_lp_tot_handling_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_HANDLING_USD

  - dimension: oq_lp_tot_product_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_PRODUCT_USD

  - dimension: oq_lp_tot_shipping_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_SHIPPING_USD

  - dimension: oq_lp_tot_tariff_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TARIFF_USD

  - dimension: oq_lp_tot_tpl_handling_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TPL_HANDLING_USD

  - dimension: oq_lp_tot_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_TPL_SHIPPING_USD

  - dimension: oq_lp_tot_vat_usd
    type: number
    sql: ${TABLE}.OQ_LP_TOT_VAT_USD

  - dimension: oq_lp_type
    sql: ${TABLE}.OQ_LP_TYPE

  - dimension: oq_mer_activity_id
    type: int
    sql: ${TABLE}.OQ_MER_ACTIVITY_ID

  - dimension: oq_mer_created_date_key
    type: number
    sql: ${TABLE}.OQ_MER_CREATED_DATE_KEY

  - dimension: oq_mer_currency
    sql: ${TABLE}.OQ_MER_CURRENCY

  - dimension: oq_mer_currency_key
    type: number
    sql: ${TABLE}.OQ_MER_CURRENCY_KEY

  - dimension: oq_mer_order_discount_usd
    type: number
    sql: ${TABLE}.OQ_MER_ORDER_DISCOUNT_USD

  - dimension: oq_mer_quote_id
    type: int
    sql: ${TABLE}.OQ_MER_QUOTE_ID

  - dimension: oq_mer_status
    sql: ${TABLE}.OQ_MER_STATUS

  - dimension: oq_mer_tot_cod_handling_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COD_HANDLING_USD

  - dimension: oq_mer_tot_cod_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COD_SHIPPING_USD

  - dimension: oq_mer_tot_cop_handling_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COP_HANDLING_USD

  - dimension: oq_mer_tot_cop_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_COP_SHIPPING_USD

  - dimension: oq_mer_tot_discount_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_DISCOUNT_USD

  - dimension: oq_mer_tot_financial_fees_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_FINANCIAL_FEES_USD

  - dimension: oq_mer_tot_handling_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_HANDLING_USD

  - dimension: oq_mer_tot_product_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_PRODUCT_USD

  - dimension: oq_mer_tot_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_SHIPPING_USD

  - dimension: oq_mer_tot_tariff_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TARIFF_USD

  - dimension: oq_mer_tot_tpl_handling_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TPL_HANDLING_USD

  - dimension: oq_mer_tot_tpl_shiping_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_TPL_SHIPING_USD

  - dimension: oq_mer_tot_vat_usd
    type: number
    sql: ${TABLE}.OQ_MER_TOT_VAT_USD

  - dimension: oq_mer_type
    sql: ${TABLE}.OQ_MER_TYPE

  - dimension: oq_mer_vat_as_margin
    type: number
    sql: ${TABLE}.OQ_MER_VAT_AS_MARGIN

  - dimension: oq_mer_vat_reduction
    type: number
    sql: ${TABLE}.OQ_MER_VAT_REDUCTION

  - dimension: oq_merchant_grand_tot_usd
    type: number
    sql: ${TABLE}.OQ_MERCHANT_GRAND_TOT_USD

  - dimension: oq_mp_activity_id
    type: int
    sql: ${TABLE}.OQ_MP_ACTIVITY_ID

  - dimension: oq_mp_created_date_key
    type: number
    sql: ${TABLE}.OQ_MP_CREATED_DATE_KEY

  - dimension: oq_mp_currency
    sql: ${TABLE}.OQ_MP_CURRENCY

  - dimension: oq_mp_currency_key
    type: number
    sql: ${TABLE}.OQ_MP_CURRENCY_KEY

  - dimension: oq_mp_grand_tot_usd
    type: number
    sql: ${TABLE}.OQ_MP_GRAND_TOT_USD

  - dimension: oq_mp_order_discount_usd
    type: number
    sql: ${TABLE}.OQ_MP_ORDER_DISCOUNT_USD

  - dimension: oq_mp_plp_discount_usd
    type: number
    sql: ${TABLE}.OQ_MP_PLP_DISCOUNT_USD

  - dimension: oq_mp_quote_id
    type: int
    sql: ${TABLE}.OQ_MP_QUOTE_ID

  - dimension: oq_mp_status
    sql: ${TABLE}.OQ_MP_STATUS

  - dimension: oq_mp_tot_cod_handling_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COD_HANDLING_USD

  - dimension: oq_mp_tot_cod_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COD_SHIPPING_USD

  - dimension: oq_mp_tot_cop_handling_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COP_HANDLING_USD

  - dimension: oq_mp_tot_cop_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_COP_SHIPPING_USD

  - dimension: oq_mp_tot_discount_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_DISCOUNT_USD

  - dimension: oq_mp_tot_financial_fees_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_FINANCIAL_FEES_USD

  - dimension: oq_mp_tot_handling_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_HANDLING_USD

  - dimension: oq_mp_tot_product_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_PRODUCT_USD

  - dimension: oq_mp_tot_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_SHIPPING_USD

  - dimension: oq_mp_tot_tariff_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TARIFF_USD

  - dimension: oq_mp_tot_tpl_handling_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TPL_HANDLING_USD

  - dimension: oq_mp_tot_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_TPL_SHIPPING_USD

  - dimension: oq_mp_tot_vat_usd
    type: number
    sql: ${TABLE}.OQ_MP_TOT_VAT_USD

  - dimension: oq_mp_type
    sql: ${TABLE}.OQ_MP_TYPE

  - dimension: oq_ms_activity_id
    type: int
    sql: ${TABLE}.OQ_MS_ACTIVITY_ID

  - dimension: oq_ms_created_date_key
    type: number
    sql: ${TABLE}.OQ_MS_CREATED_DATE_KEY

  - dimension: oq_ms_currency
    sql: ${TABLE}.OQ_MS_CURRENCY

  - dimension: oq_ms_currency_key
    type: number
    sql: ${TABLE}.OQ_MS_CURRENCY_KEY

  - dimension: oq_ms_grand_tot_usd
    type: number
    sql: ${TABLE}.OQ_MS_GRAND_TOT_USD

  - dimension: oq_ms_order_discount_usd
    type: number
    sql: ${TABLE}.OQ_MS_ORDER_DISCOUNT_USD

  - dimension: oq_ms_quote_id
    type: int
    sql: ${TABLE}.OQ_MS_QUOTE_ID

  - dimension: oq_ms_status
    sql: ${TABLE}.OQ_MS_STATUS

  - dimension: oq_ms_tot_cod_handling_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COD_HANDLING_USD

  - dimension: oq_ms_tot_cod_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COD_SHIPPING_USD

  - dimension: oq_ms_tot_cop_handling_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COP_HANDLING_USD

  - dimension: oq_ms_tot_cop_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_COP_SHIPPING_USD

  - dimension: oq_ms_tot_discount_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_DISCOUNT_USD

  - dimension: oq_ms_tot_financial_fees_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_FINANCIAL_FEES_USD

  - dimension: oq_ms_tot_handling_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_HANDLING_USD

  - dimension: oq_ms_tot_product_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_PRODUCT_USD

  - dimension: oq_ms_tot_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_SHIPPING_USD

  - dimension: oq_ms_tot_tariff_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TARIFF_USD

  - dimension: oq_ms_tot_tpl_handling_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TPL_HANDLING_USD

  - dimension: oq_ms_tot_tpl_shipping_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_TPL_SHIPPING_USD

  - dimension: oq_ms_tot_vat_usd
    type: number
    sql: ${TABLE}.OQ_MS_TOT_VAT_USD

  - dimension: oq_ms_type
    sql: ${TABLE}.OQ_MS_TYPE

  - dimension: order_fact_row_id
    type: int
    sql: ${TABLE}.ORDER_FACT_ROW_ID

  - dimension: osm_shipping_method_id
    sql: ${TABLE}.OSM_SHIPPING_METHOD_ID

  - dimension: pd_product_parent_id
    sql: ${TABLE}.PD_PRODUCT_PARENT_ID

  - dimension: price_model_type
    sql: ${TABLE}.PRICE_MODEL_TYPE

  - dimension: rejected_order_yn
    sql: ${TABLE}.REJECTED_ORDER_YN

  - dimension: shipped_item_yn
    sql: ${TABLE}.SHIPPED_ITEM_YN

  - dimension: shipped_order_yn
    sql: ${TABLE}.SHIPPED_ORDER_YN

  - dimension: shipping_address_key
    type: number
    sql: ${TABLE}.SHIPPING_ADDRESS_KEY

  - dimension: shipping_country_key
    type: number
    sql: ${TABLE}.SHIPPING_COUNTRY_KEY

  - dimension: started_order_yn
    sql: ${TABLE}.STARTED_ORDER_YN

  - dimension: submitted_order_yn
    sql: ${TABLE}.SUBMITTED_ORDER_YN

  - measure: count
    type: count
    drill_fields: [oh_po_file_created_time, oh_created_time]

