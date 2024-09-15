
# Install packages, load libraries
#install.packages("tidyverse")
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

# Day 1 pt 2 -------------------------------------------------------------------

day_1_part_2 <- day_1_data %>%
  mutate(day_one_alt = day_one %>%
           gsub("one", "o1e", .) %>%
           gsub("two", "t2o", .) %>%
           gsub("three", "t3e", .) %>%
           gsub("four", "f4r", .) %>%
           gsub("five", "f5e", .) %>%
           gsub("six", "s6x", .) %>%
           gsub("seven", "s7n", .) %>%
           gsub("eight", "e8t", .) %>%
           gsub("nine", "n9e", .))
           
           
# Extract first digit
day_1_part_2_answer <- day_1_part_2 %>% 
  mutate(first_digit = str_extract(day_one_alt, "[0-9]"),
         last_digit = str_extract(day_one_alt, "[0-9](?!.*[0-9])"),
         calibration_value = as.numeric(paste0(first_digit, last_digit)))

# sum of calibration values
sum(day_1_part_2_answer$calibration_value) #55614

#day 2 -------------------------------------------------------------------------

day_2_data <- readLines("C:/Users/thoma/OneDrive/Documents/R/Advent-of-code-2023/AOC_day_two.txt")


















