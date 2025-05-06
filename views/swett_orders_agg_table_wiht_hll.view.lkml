# The name of this view in Looker is "Swett Orders Agg Table Wiht Hll"
view: swett_orders_agg_table_wiht_hll {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST"."SWETT_ORDERS_AGG_TABLE_WIHT_HLL" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Created Day of Week" in Explore.

  dimension: orders_created_day_of_week {
    type: string
    sql: ${TABLE}."orders.created_day_of_week" ;;
  }

  dimension: orders_created_day_of_week_index {
    type: number
    sql: ${TABLE}."orders.created_day_of_week_index" ;;
  }

  dimension: orders_hll_count {
    type: number
    sql: ${TABLE}."orders.hll_count" ;;
  }

  dimension: orders_hll_count0 {
    type: number
    sql: ${TABLE}."orders.hll_count0" ;;
  }

  dimension: orders_hll_count__hll {
    type: string
    sql: ${TABLE}."orders.hll_count__hll" ;;
  }
  measure: count {
    type: count
  }
}
