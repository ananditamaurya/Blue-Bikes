library("readxl")

df <- read_excel("/Users/ananditamaurya/Desktop/Info Visual/Project 2/NJCB.xlsx", sheet = "Sheet2")

library(leaflet)
library(dplyr)

logos <- awesomeIconList(
  "NJ" = makeAwesomeIcon(
    icon = "train",
    markerColor = "red",
    library = "fa"
  ),
  "CB" = makeAwesomeIcon(
    icon = "bike",
    markerColor = "blue",
    library = "fa"
  )
)


leaflet(df) %>%
  addAwesomeMarkers(icon = ~ logos[df$Type],
                    label = ~ df$Type) %>%
  addProviderTiles("CartoDB.Voyager")
 

NYC <- read.csv("/Users/ananditamaurya/Desktop/Info Visual/Project 2/NYC_citibike.csv")

leaflet(NYC) %>%
  addTiles() %>%  
  addMarkers(lng = ~start.station.longitude, lat =~start.station.latitude, 
             popup = ~paste(start.station.name, "<br>"))


leaflet(NYC) %>%
  addTiles()%>%
  addProviderTiles("CartoDB.Positron") %>%  
  addCircleMarkers(lng = ~start.station.longitude, lat = ~start.station.latitude, 
                   radius = 3, fill = TRUE, stroke = FALSE,
                   popup = ~paste(start.station.name, "<br>")) %>%
  leafletOptions(opacity = 10)

UberCB <- read_excel("/Users/ananditamaurya/Desktop/Info Visual/Project 2/UberCB.xlsx")

logos <- awesomeIconList(
  "Uber" = makeAwesomeIcon(
    icon = "car",
    markerColor = "orange",
    library = "fa"
  ),
  "CB" = makeAwesomeIcon(
    icon = "child",
    markerColor = "blue",
    library = "fa"
  )
)

leaflet(UberCB) %>%
  addAwesomeMarkers(icon = ~ logos[UberCB$Type],
                    label = ~ UberCB$Type) %>%
  addProviderTiles("CartoDB.Voyager")


#####################################
leaflet(UberCB) %>%
  addCircleMarkers(lng = ~Longitude, lat = ~Latitude, radius = 3, 
                   fill = TRUE, stroke = FALSE, 
                   fillColor = ~ifelse(Type == "Uber", "red", "blue"),
                   popup = ~paste(Type)) %>%
  addProviderTiles("CartoDB.Positron")%>%
  leafletOptions(opacity = 100)
