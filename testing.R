library(sherlock)
library(dplyr)

# Combine files with same column name and types -- dplyr::bind_rows()
data <- load_files(
  folder,
  filetype = ".csv",
  data_cleaning_function = NULL,
  id_by_filename = FALSE,
  id_col_name = "file"
)


# Select low high units into pairs
df <- select_low_high_units(
  data = data,
  var = prod_id,
  number_of_pairs = 7
)

