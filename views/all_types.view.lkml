# The name of this view in Looker is "All Types"
view: all_types {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST"."ALL_TYPES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "This Float" in Explore.

  dimension: this_float {
    type: number
    sql: ${TABLE}."THIS_FLOAT" ;;
  }

  dimension: this_int {
    type: number
    sql: ${TABLE}."THIS_INT" ;;
  }

  dimension: this_string {
    type: string
    sql: ${TABLE}."THIS_STRING" ;;
  }
  measure: count {
    type: count
  }
}
