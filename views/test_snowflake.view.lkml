view: test_snowflake {
  derived_table: {
    datagroup_trigger: snowflake_test_mtr_default_datagroup
    create_process: {
      sql_step: CREATE TABLE IF NOT EXISTS ${SQL_TABLE_NAME} (test_column varchar(88))  ;;
      sql_step: INSERT INTO  ${SQL_TABLE_NAME} VALUES ('test') ;;
      sql_step:
        INSERT INTO  ${SQL_TABLE_NAME} VALUES ('test_1') ;;
    }
  }
  dimension: test_column {
    hidden: no
  }
}
