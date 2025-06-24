# If necessary, uncomment the line below to include explore_source.
# include: "snowflake_test_mtr.model.lkml"

view: pdt_test {
  derived_table: {
    sql: SELECT
    (TO_CHAR(TO_DATE(orders."CREATED_AT" ), 'YYYY-MM-DD')) AS "orders.created_date",
    orders."USER_ID"  AS "orders.user_id",
    order_items."ORDER_ID"  AS "order_items.order_id",
    order_items."SKU_NUM"  AS "order_items.sku_num",
    COUNT(*) AS "order_items.count"
FROM "LOOKER_TEST"."ORDER_ITEMS"  AS order_items
INNER JOIN "LOOKER_TEST"."ORDERS"  AS orders ON (order_items."ORDER_ID") = (orders."ID")
GROUP BY
    (TO_DATE(orders."CREATED_AT" )),
    2,
    3,
    4
ORDER BY
    1 DESC ;;
  }

  dimension: created_date {
    description: ""
    type: date
  }
  dimension: user_id {
    description: ""
    type: number
  }
  dimension: order_id {
    description: ""
    type: number
  }
  dimension: sku_num {
    description: ""
    type: number
  }
  dimension: count {
    description: ""
    type: number
  }
}
