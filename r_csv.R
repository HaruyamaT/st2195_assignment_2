install.packages("rvest")
library("rvest")
library(magrittr)
library(tidyverse)

x <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values") 

data <- html_nodes(x,"table.wikitable") %>%
        html_text()

data

write.csv(data, "r_csv", fileEncoding = "CP932", row.names = FALSE)
