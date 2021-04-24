
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ITrpc

<!-- badges: start -->
<!-- badges: end -->

The goal of ITrpc is to provide some common IT utility functions.

## Installation

You can install it from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("pfc5098/ITrpc")
```

## Examples

A Redshift database connection can be established with the following
three steps:

### Step 1. Call `usethis::edit_r_environ()` to open the .Renviron file.

### Step 2. Inside the .Renviron file, enter:

``` r
REDSHIFT_USER = username
REDSHIFT_PASSWORD = password
REDSHIFT_HOST = host_ip_address
REDSHIFT_PORT = port_number
REDSHIFT_DBNAME = database_name
```

### Step 3. Call `connect_redshift()` to create the connection.

``` r
con <- ITrpc::connect_redshift()
```

Disconnect from the database with:

``` r
DBI::dbDisconnect(con)
```
