view: test1 {
  derived_table: {
    datagroup_trigger: snowflake_test_mtr_default_datagroup
    create_process: {
      sql_step: CREATE TABLE IF NOT EXISTS ${SQL_TABLE_NAME} (test_column varchar(88))  ;;
      sql_step: INSERT INTO ${SQL_TABLE_NAME} VALUES ('test') ;;
      sql_step:
        BEGIN
        INSERT INTO "LOOKER_TEST"."TEST_1" VALUES (8);
        EXCEPTION
        WHEN OTHER THEN
        UPDATE "LOOKER_TEST"."TEST_RESULT" set status = 'FAIL' where ID=1;
        --Raise the same exception that you are handling.
        END;;
      }
  }
      dimension: test_column {
      hidden: no
  }
}
