- view: promotions
  sql_table_name: AGG.PROMOTIONS_REPORTING
  fields:

  - dimension: coupon_type
    type: string
    sql: ${TABLE}.COUPON_TYPE

  - dimension: coupon_yn
    type: string
    sql: ${TABLE}.COUPON_YN

  - dimension: duty_subsidy
    type: number
    sql: ${TABLE}.DUTY_SUBSIDY

  - dimension: financial_entity_name
    type: string
    sql: ${TABLE}.FINANCIAL_ENTITY_NAME

  - dimension: full_shipping_handling_quote
    type: number
    sql: ${TABLE}.FULL_SHIPPING_HANDLING_QUOTE

  - dimension: lcp_override_component
    type: string
    sql: ${TABLE}.LCP_OVERRIDE_COMPONENT

  - dimension: lcp_promotion_id
    type: number
    sql: ${TABLE}.LCP_PROMOTION_ID

  - dimension: lcp_promotion_name
    type: string
    sql: ${TABLE}.LCP_PROMOTION_NAME

  - dimension: lcp_promotion_type
    type: string
    sql: ${TABLE}.LCP_PROMOTION_TYPE

  - dimension: merch_id
    type: number
    sql: ${TABLE}.MERCH_ID

  - dimension: merch_name
    type: string
    sql: ${TABLE}.MERCH_NAME

  - dimension: merch_pricing_ccy
    type: string
    sql: ${TABLE}.MERCH_PRICING_CCY

  - dimension: merchant_lcp_margin_total
    type: number
    sql: ${TABLE}.MERCHANT_LCP_MARGIN_TOTAL

  - dimension: oh_checkout_status
    type: string
    sql: ${TABLE}.OH_CHECKOUT_STATUS

  - dimension: oh_coupon_code
    type: string
    sql: ${TABLE}.OH_COUPON_CODE

  - dimension: oh_created_date_key
    type: number
    sql: ${TABLE}.OH_CREATED_DATE_KEY

  - dimension: oh_credit_card_type
    type: string
    sql: ${TABLE}.OH_CREDIT_CARD_TYPE

  - dimension: oh_merch_order_id
    type: string
    sql: ${TABLE}.OH_MERCH_ORDER_ID

  - dimension: oq_merchant_grand_tot_usd_total
    type: number
    sql: ${TABLE}.OQ_MERCHANT_GRAND_TOT_USD_TOTAL

  - dimension: order_id
    type: string
    sql: ${TABLE}.ORDER_ID

  - dimension: osm_shipping_method_id
    type: string
    sql: ${TABLE}.OSM_SHIPPING_METHOD_ID

  - dimension: plp_discount_total
    type: number
    sql: ${TABLE}.PLP_DISCOUNT_TOTAL

  - dimension: product_override_component
    type: string
    sql: ${TABLE}.PRODUCT_OVERRIDE_COMPONENT

  - dimension: product_promotion_id
    type: number
    sql: ${TABLE}.PRODUCT_PROMOTION_ID

  - dimension: product_promotion_name
    type: string
    sql: ${TABLE}.PRODUCT_PROMOTION_NAME

  - dimension: product_promotion_type
    type: string
    sql: ${TABLE}.PRODUCT_PROMOTION_TYPE

  - dimension: sh_override_component
    type: string
    sql: ${TABLE}.SH_OVERRIDE_COMPONENT

  - dimension: sh_promotion_id
    type: number
    sql: ${TABLE}.SH_PROMOTION_ID

  - dimension: sh_promotion_name
    type: string
    sql: ${TABLE}.SH_PROMOTION_NAME

  - dimension: sh_promotion_type
    type: string
    sql: ${TABLE}.SH_PROMOTION_TYPE

  - dimension: shipping_country_name
    type: string
    sql: ${TABLE}.SHIPPING_COUNTRY_NAME

  - dimension: shipping_handling_subsidy
    type: number
    sql: ${TABLE}.SHIPPING_HANDLING_SUBSIDY

  - dimension: tariff_override_component
    type: string
    sql: ${TABLE}.TARIFF_OVERRIDE_COMPONENT

  - dimension: tariff_promotion_id
    type: number
    sql: ${TABLE}.TARIFF_PROMOTION_ID

  - dimension: tariff_promotion_name
    type: string
    sql: ${TABLE}.TARIFF_PROMOTION_NAME

  - dimension: tariff_promotion_type
    type: string
    sql: ${TABLE}.TARIFF_PROMOTION_TYPE

  - dimension: tax_subsidy
    type: number
    sql: ${TABLE}.TAX_SUBSIDY

  - dimension: vat_override_component
    type: string
    sql: ${TABLE}.VAT_OVERRIDE_COMPONENT

  - dimension: vat_promotion_id
    type: number
    sql: ${TABLE}.VAT_PROMOTION_ID

  - dimension: vat_promotion_name
    type: string
    sql: ${TABLE}.VAT_PROMOTION_NAME

  - dimension: vat_promotion_type
    type: string
    sql: ${TABLE}.VAT_PROMOTION_TYPE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - financial_entity_name
    - vat_promotion_name
    - tariff_promotion_name
    - sh_promotion_name
    - product_promotion_name
    - lcp_promotion_name
    - shipping_country_name
    - merch_name

