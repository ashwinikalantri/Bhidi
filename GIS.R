library(tidyverse); library(ggmap); library(maps);library(maptools);library(rgdal);library(ggplot2);library(ggthemes);library(scales);library(hexbin);
setwd("/Volumes/GoogleDrive/Shared drives/HDSS/GIS")
ogrDrivers()
wardha <- readOGR("geo/wardha.shp")

##
class(wardha)
names(wardha)
cen11 <- read_csv("Wardha_Cen2011.csv")
print(wardha$CEN_2011)
print(cen11$CEN_2011)
wardha2 <- fortify(wardha, region = "CEN_2011")
merge.shp.coef<-merge(wardha2, cen11, by.x = "id", by.y="CEN_2011", all.x=TRUE)
final.plot<-merge.shp.coef[order(merge.shp.coef$order), ]
ggplot(chh, aes(gps__Longitude, gps__Latitude)) +
  geom_polygon(data = final.plot, 
               aes(x = long, y = lat, group = group), color = "grey", fill = "white", size = 0.15, label = "Name") +
  coord_map() +
  geom_density2d(colour = "red", alpha=1,linejoin = "round", linetype = "solid", size = 0.5, n=500, h=0.03) +
  geom_point(colour = "yellow", alpha = 0.2, size = 2) +
  xlab("Longitude") +
  ylab("Latitude") +
  theme_clean()
ggplot(chh, aes(gps__Longitude, gps__Latitude)) +
 geom_density2d()

#scale_fill_distiller(name="Population", palette = "Pastel1", guide = "legend") + theme_clean()



###NEW Method

chh %>% ggplot() +
  geom_point(aes(gps__Latitude,gps__Longitude))
##

data <- data.frame(pop = chh$fmember_no,
                   vill = tolower(rownames(chh)))
map <- map_data("state")
k <- ggplot(data, aes(fill = phc))
k + geom_map(aes(map_id = wardha), map = map) +
  expand_limits(x = map$long, y = map$lat)


write_csv(wardha2,"/Volumes/GoogleDrive/Shared drives/HDSS/HDSS Data/wardha.csv")
