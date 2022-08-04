library(tidyverse)

data_praat <- read.csv("data/data.csv",stringsAsFactors = TRUE)

data_social <- read.csv("data/socialdata.csv",stringsAsFactors = TRUE)

data_phon <- read.csv("data/worddata.csv",stringsAsFactors = TRUE)

data_all <- data_praat %>% 
  left_join(data_phon) %>% 
  left_join(data_social)
  
