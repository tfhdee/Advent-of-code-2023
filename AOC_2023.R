
# Install packages, load libraries
install.packages("tidyverse")
library(dplyr)
library(stringr)

# Load data
day_1_data <- read.table("C:/Users/thoma/OneDrive/Documents/R/Advent-of-code-2023/AOC_day_one.txt") %>% 
  rename(day_one = V1)

# Extract first digit
day_1_data_task1 <- day_1_data %>% 
  mutate(first_digit = str_extract(day_one, "[0-9]"),
         last_digit = str_extract(day_one, "[0-9](?!.*[0-9])"),
         calibration_value = as.numeric(paste0(first_digit, last_digit)))

# sum of calibration values
sum(day_1_data_task1$calibration_value) #55488