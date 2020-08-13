library(tidytext)
library(tokenizers)
library(dplyr)
#Set working directory to that with txt file in it
setwd("C:/Program Files/R/Datasets")

#read in permit saved as text file
text1<-readLines("TrailPermit.txt")

#show instances of the word "must"
grep('must', text1, value=TRUE)  

#Create array, "tibble"
text1_df<-tibble(line=1:200, text=text1[1:200])

#break array out into rows of words
text1_df_1<-text1_df%>%
  unnest_tokens(word, text)

#count words
text1_df_1%>%
  count(word, sort=TRUE)
