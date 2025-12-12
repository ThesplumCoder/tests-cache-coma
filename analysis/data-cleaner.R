library(tidyverse)
library(ggthemes)

name_convention <- c(
  "5rps_2min-normal-load_test.jtl", 
  "10rps_2min-normal-load_test.jtl", 
  "5rps_2min-cache-load_test.jtl", 
  "10rps_2min-cache-load_test.jtl", 
  "1rps_24h-normal-endurance_test.jtl",
  "1rps_24h-cache-endurance_test.jtl")

for (filename in name_convention) {
  path <- paste0("../data/raw/", filename)
  tryCatch({
    raw_data <- read_csv(path)
    raw_data$responseCode = as.character(raw_data$responseCode)
    raw_data[raw_data$responseCode == "Non HTTP response code: org.apache.http.ConnectionClosedException", "responseCode"] <- "ConnectionClosedException"
    write_csv(raw_data, paste0("../data/clean/", filename), append = FALSE)
  
  }, error = function(err) {
    print(paste0("The file ", path, " doesn't exist."))
    print(err)
  }, warning = function(warr) {
    print(warr)
  })
}