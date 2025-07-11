# If necessary, uncomment the line below to include explore_source.
# include: "snowflake_test_mtr.model.lkml"

# view: pdt_test {
#   derived_table: {
#     sql: SELECT
#     (TO_CHAR(TO_DATE(orders."CREATED_AT" ), 'YYYY-MM-DD')) AS "created_date",
#     orders."USER_ID"  AS "user_id",
#     order_items."ORDER_ID"  AS "order_id",
#     order_items."SKU_NUM"  AS "sku_num",
#     COUNT(*) AS "count"
# FROM "LOOKER_TEST"."ORDER_ITEMS"  AS order_items
# INNER JOIN "LOOKER_TEST"."ORDERS"  AS orders ON (order_items."ORDER_ID") = (orders."ID")
# GROUP BY
#     (TO_DATE(orders."CREATED_AT" )),
#     2,
#     3,
#     4
# ORDER BY
#     1 DESC ;;
#   }

#   dimension: created_date {
#     description: ""
#     type: date
#     sql: ${TABLE}."created_date" ;;
#   }
#   dimension: user_id {
#     description: ""
#     type: number
#     sql: ${TABLE}."user_id";;
#   }
#   dimension: order_id {
#     description: ""
#     type: number
#     sql: ${TABLE}."order_id";;
#   }
#   dimension: sku_num {
#     description: ""
#     type: number
#     sql: ${TABLE}."sku_num";;
#   }
#   dimension: count {
#     description: ""
#     type: number
#     sql: ${TABLE}."count";;
#   }
# }
