#' Connect to Redshift
#'
#' Connect to a Redshift database.
#'
#' @return A Redshift connection.
#' @export
connect_redshift <- function() {
  DBI::dbConnect(
    drv = RPostgreSQL::PostgreSQL(),
    user = Sys.getenv("REDSHIFT_USER"),
    password = Sys.getenv("REDSHIFT_PASSWORD"),
    host = Sys.getenv("REDSHIFT_HOST"),
    port = as.integer(Sys.getenv("REDSHIFT_PORT")),
    dbname = Sys.getenv("REDSHIFT_DBNAME")
  )
}
