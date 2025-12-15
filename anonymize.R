library(readr)
library(dplyr)

infile  <- "data/PSYCH 251 Replication_December 5, 2025_11.32.csv"
outfile <- "data/PSYCH 251 Replication_December 5, 2025_11.32-anon.csv"

cols_to_drop <- c(
  "RecipientLastName",
  "RecipientFirstName",
  "RecipientEmail",
  "ExternalDataReference",
  "IPAddress",
  "LocationLatitude",
  "LocationLongitude",
  "PROLIFIC_PID"
)

df_raw <- read_csv(infile, show_col_types = FALSE)

df_anon <- df_raw %>%
  dplyr::select(-any_of(cols_to_drop))

write_csv(df_anon, outfile)