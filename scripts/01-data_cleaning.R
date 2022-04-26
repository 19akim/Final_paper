#### Preamble ####
# Purpose: Clean and prepare the data 
# Author: Ayoon Kim
# Data: 27 April 2021
# Contact: ayoon.kim@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the Toronto's homicide data and saved it to inputs/data



#### Workspace setup ####
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/homicide.csv")

names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(Division, 
         Homicide_Type,
         Hood_ID,
         Neighbourhood,
         Occurrence_Date,
         Occurrence_year)

         
reduced_data

write_csv(reduced_data, "outputs/data/prepared_homicide.csv")


         