library(ggplot2)
library(dplyr)

citi_2019 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/2019.csv')

citi_start_2019 <- citi_2019 %>% 
  group_by(start.station.name, start.station.latitude, start.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_end_2019 <- citi_2019 %>% 
  group_by(end.station.name, end.station.latitude, end.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_start_2019 <- head(citi_start_2019,10)
citi_end_2019<- head(citi_end_2019,10)

citi_2020 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/2020.csv')

citi_start_2020 <- citi_2020 %>% 
  group_by(start.station.name, start.station.latitude, start.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_end_2020 <- citi_2020 %>% 
  group_by(end.station.name, end.station.latitude, end.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_start_2020 <- head(citi_start_2020,10)
citi_end_2020<- head(citi_end_2020,10)

citi_2021 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/2021.csv')

citi_start_2021 <- citi_2021 %>% 
  group_by(start_station_name,start_lat, start_lng) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_end_2021 <- citi_2021 %>% 
  group_by(end_station_name,end_lat, end_lng) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_start_2021 <- head(citi_start_2021,10)
citi_end_2021 <- head(citi_end_2021,10)

citi_2022 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/2022.csv')

citi_start_2022 <- citi_2022 %>% 
  group_by(start_station_name,start_lat, start_lng) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_end_2022 <- citi_2022 %>% 
  group_by(end_station_name,end_lat, end_lng) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

citi_start_2022 <- head(citi_start_2022,10)
citi_end_2022 <- head(citi_end_2022,10)

blue_2019 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/blue2019.csv')

blue_start_2019 <- blue_2019 %>% 
  group_by(start.station.name, start.station.latitude, start.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_end_2019 <- blue_2019 %>% 
  group_by(end.station.name, end.station.latitude, end.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_start_2019 <- head(blue_start_2019,10)
blue_end_2019 <- head(blue_end_2019,10)

blue_2020 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/blue2020.csv')

blue_start_2020 <- blue_2020 %>% 
  group_by(start.station.name, start.station.latitude, start.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_end_2020 <- blue_2020 %>% 
  group_by(end.station.name, end.station.latitude, end.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_start_2020 <- head(blue_start_2020,10)
blue_end_2020 <- head(blue_end_2020,10)

blue_2021 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/blue2021.csv')

blue_start_2021 <- blue_2021 %>% 
  group_by(start.station.name, start.station.latitude, start.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_end_2021 <- blue_2021 %>% 
  group_by(end.station.name, end.station.latitude, end.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_start_2021 <- head(blue_start_2021,10)
blue_end_2021 <- head(blue_end_2021,10)

blue_2022 <- read.csv('/Users/ananditamaurya/Desktop/Info Visual/Project/blue2022.csv')

blue_start_2022 <- blue_2022 %>% 
  group_by(start.station.name, start.station.latitude, start.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_end_2022 <- blue_2022 %>% 
  group_by(end.station.name, end.station.latitude, end.station.longitude) %>% 
  summarize(no_of_trips = n())%>% 
  arrange(desc(no_of_trips))

blue_start_2022 <- head(blue_start_2022,10)
blue_end_2022 <- head(blue_end_2022,10)

#Plotting on map

library(leaflet)

#Citi bikes in NYC

leaflet(citi_start_2019) %>%
  addTiles() %>%  
  addMarkers(lng = ~start.station.longitude, lat =~start.station.latitude, 
             popup = ~paste(start.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(citi_end_2019) %>%
  addTiles() %>%  
  addMarkers(lng = ~end.station.longitude, lat =~end.station.latitude, 
             popup = ~paste(end.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(citi_start_2020) %>%
  addTiles() %>%  
  addMarkers(lng = ~start.station.longitude, lat =~start.station.latitude, 
             popup = ~paste(start.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(citi_end_2020) %>%
  addTiles() %>%  
  addMarkers(lng = ~end.station.longitude, lat =~end.station.latitude, 
             popup = ~paste(end.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(citi_start_2021) %>%
  addTiles() %>%  
  addMarkers(lng = ~start_lng, lat =~start_lat, 
             popup = ~paste(start_station_name, "<br>", "No. of Trips:", no_of_trips))

leaflet(citi_end_2021) %>%
  addTiles() %>%  
  addMarkers(lng = ~end_lng, lat =~end_lat, 
             popup = ~paste(end_station_name, "<br>", "No. of Trips:", no_of_trips))

leaflet(citi_start_2022) %>%
  addTiles() %>%  
  addMarkers(lng = ~start_lng, lat =~start_lat, 
             popup = ~paste(start_station_name, "<br>", "No. of Trips:", no_of_trips))

leaflet(citi_end_2022) %>%
  addTiles() %>%  
  addMarkers(lng = ~end_lng, lat =~end_lat, 
             popup = ~paste(end_station_name, "<br>", "No. of Trips:", no_of_trips))

#Blue bikes in Boston

leaflet(blue_start_2019) %>%
  addTiles() %>%  
  addMarkers(lng = ~start.station.longitude, lat =~start.station.latitude, 
             popup = ~paste(start.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(blue_end_2019) %>%
  addTiles() %>%  
  addMarkers(lng = ~end.station.longitude, lat =~end.station.latitude, 
             popup = ~paste(end.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(blue_start_2020) %>%
  addTiles() %>%  
  addMarkers(lng = ~start.station.longitude, lat =~start.station.latitude, 
             popup = ~paste(start.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(blue_end_2020) %>%
  addTiles() %>%  
  addMarkers(lng = ~end.station.longitude, lat =~end.station.latitude, 
             popup = ~paste(end.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(blue_start_2021) %>%
  addTiles() %>%  
  addMarkers(lng = ~start.station.longitude, lat =~start.station.latitude, 
             popup = ~paste(start.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(blue_end_2021) %>%
  addTiles() %>%  
  addMarkers(lng = ~end.station.longitude, lat =~end.station.latitude, 
             popup = ~paste(end.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(blue_start_2022) %>%
  addTiles() %>%  
  addMarkers(lng = ~start.station.longitude, lat =~start.station.latitude, 
             popup = ~paste(start.station.name, "<br>", "No. of Trips:", no_of_trips))

leaflet(blue_end_2022) %>%
  addTiles() %>%  
  addMarkers(lng = ~end.station.longitude, lat =~end.station.latitude, 
             popup = ~paste(end.station.name, "<br>", "No. of Trips:", no_of_trips))



