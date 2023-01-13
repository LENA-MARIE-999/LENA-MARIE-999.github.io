## my script for the Netflix analysis

## first, need to load packages

library(tidyverse)

#data1 <- read_csv("./best_shows_netflix.csv")
#data2 <- read_csv("./netflix_titles.csv")

#data_o <- full_join(data1, data2, by = "title")
#data_o <- data %>% filter(type != "Movie") %>% filter(score!="NA")


data <- read_csv("./netflix-imdb.csv")
colnames(data)[colnames(data) == "Series or Movie"] <- "type"

data <- data %>% filter(type == "Series") %>% select(Title, Genre, Languages, `Country Availability`, `IMDb Score`, `IMDb Votes`, `Release Date`, `Netflix Release Date`)

colnames(data) <- c("Title", "Genre", "Languages", "Availability", "Score", "Votes", "Release", "NetRelease")

# top shows

a <- data %>% arrange(desc(Score))
a %>% filter(data$Title =="Arrested Development")










