library(dplyr)
library(readr)
library(broom)

# data_phon 
word <- c("bath","class","grass")
folMan <- c("fricative","fricative","fricative")
folPlc <- c("dental","alveolar","alveolar")
data_phon <- cbind(as.data.frame(word),folMan,folPlc) %>% 
  mutate(lexSet = "BATH")


# Speaker A
F2 <- rnorm(60, mean = 1660)
dfA <- as.data.frame(F2) %>% 
  cbind(rep(words,20)) %>%
  rename(word = "rep(words, 20)") %>% 
  mutate(speaker = "Abraham")
  

# SPeaker B
F2 <- rnorm(60, mean = 1660)
dfB <- as.data.frame(F2) %>% 
  cbind(rep(words,20)) %>% 
  rename(word = "rep(words, 20)") %>% 
  mutate(speaker = "Bilhah")


# Speaker C
F2 <- rnorm(60, mean = 1100)
dfC <- as.data.frame(F2) %>% 
  cbind(rep(words,20)) %>% 
  rename(word = "rep(words, 20)") %>% 
  mutate(speaker = "Caleb")


data <- rbind(dfA,dfB,dfC)

# social info
speaker <- c("Abraham","Bilhah","Caleb")
sex <- c("male","female","male")
region <- c("south","south","north")
data_social <- cbind(as.data.frame(speaker),sex,region)

# write data

write.csv(data,"data/data.csv",row.names = FALSE)
write.csv(data_social,"data/socialdata.csv",row.names = FALSE)
write.csv(data_phon,"data/worddata.csv",row.names = FALSE)
