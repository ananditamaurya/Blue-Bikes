library("readxl")

df <- read_excel("/Users/ananditamaurya/Desktop/Info Visual/Project 2/jersey-city-public-transit.xlsx")

NJ <- read_excel("/Users/ananditamaurya/Desktop/Info Visual/Project 2/jersey-city-public-transit.xlsx", sheet = "New Jersey")


library(leaflet)

leaflet(NJ) %>%
  addTiles() %>%  
  addMarkers(lng = ~Long, lat =~Lat, 
             popup = ~paste(Station_Name, "<br>"))
