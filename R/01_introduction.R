# 01 - alphavantager - Indroduction ----


# The R package is available on:
# - CRAN: https://cran.r-project.org/package=alphavantager
# - GitHub: https://github.com/business-science/alphavantager

# Get your free API key from
# https://www.alphavantage.co/

# Save it in your .Renviron file as "ALPHA_VANTAGE_API_KEY"
# usethis::edit_r_environ()

# Restart R

# Check that it worked
Sys.getenv("ALPHA_VANTAGE_API_KEY")


## Setup ----

# install.packages("alphavantager")
library(alphavantager)

citation("alphavantager")

# Give the R package your API key

av_api_key(api_key = Sys.getenv("ALPHA_VANTAGE_API_KEY"))

# Check if it worked
print(av_api_key())


## Getting financial data from Alpha Vantage ----

# Check out the API documentation
# https://www.alphavantage.co/documentation/

args(av_get)


### Time series data ----
av_get(
  symbol = "MSFT", 
  av_fun = "TIME_SERIES_INTRADAY",
  interval = "15min",
  outputsize = "full"
  )


# Foreign Exchange -----

# Real-time quote
av_get(symbol = "EUR/USD", av_fun = "CURRENCY_EXCHANGE_RATE")


# END