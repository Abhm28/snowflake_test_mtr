# Define the database connection to be used for this model.
connection: "anthony-snowflake"

# include all the views
include: "/views/**/*.view.lkml"
include: "/views/test1.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: snowflake_test_mtr_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_test_mtr_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Snowflake Test Mtr"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: all_types {}

explore: billion_orders {}

explore: edges {}

explore: fatal_error_incremental_bug {}

explore: hundred_million_orders {}

# explore: orders {}

# explore: order_items {
#   join: orders {
#     type: inner
#     sql_on: ${order_items.order_id} = ${orders.id} ;;
#     relationship: many_to_one
#   }
# }


explore: swett_orders_agg_table_wiht_hll {}

explore: users {}

explore: test1 {}

explore: test_snowflake {}

# explore: pdt_test {}
