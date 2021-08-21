#' Show tables in a Databricks schema
#'
#' @param sc A sparklyr connection.
#' @param schema  A Databricks schema.
#'
#' @return Tables in the schema.
#' @export
databricks_show_tables <- function(sc, schema) {
  DBI::dbGetQuery(
    sc,
    glue::glue("SHOW TABLES FROM {schema}")
  )
}
