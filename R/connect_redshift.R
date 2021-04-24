#' Connect to Redshift
#'
#' Connect to a Redshift database.
#'
#' @return A Redshift connection.
#' @export
connect_redshift <- function() {
  DBI::dbConnect(
    drv = RPostgreSQL::PostgreSQL(),
    host = Sys.getenv("REDSHIFT_HOST"),
    dbname = Sys.getenv("REDSHIFT_DBNAME"),
    port = as.integer(Sys.getenv("REDSHIFT_PORT")) ,
    user = Sys.getenv("REDSHIFT_USER"),
    password = Sys.getenv("REDSHIFT_PASSWORD")
  )
}
