# The name of this view in Looker is "Edges"
view: edges {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST"."EDGES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "From Node" in Explore.

  dimension: from_node {
    type: string
    sql: ${TABLE}."FROM_NODE" ;;
  }

  dimension: to_node {
    type: string
    sql: ${TABLE}."TO_NODE" ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}."WEIGHT" ;;
  }
  measure: count {
    type: count
  }
}
