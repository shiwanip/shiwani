read.
airquality<-datasets::airquality
head(airquality,5)
View(airquality)
tail(airquality,5)
airquality[,c(2,3)]
airquality[c(12,56),c(2,3)]
summary(airquality[50,c(1,3,5)])
airquality
summary(airquality$Wind)

boxplot(airquality)
boxplot.stats(airquality$wind)$out
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0, bty="0")

#####################################################################################
e_quakes <- datasets::quakes
####Top 10 rows and last 10 rows
head(quakes,5)
tail(quakes,5)



######Columns
e_quakes[c(23,34),c(1,2)]


######## remove one column from the df
e_quakes[,-3]

## summary statistics of one colum 


summary(e_quakes[,3])


colnames(e_quakes)
summary(e_quakes$lat)
summary(e_quakes)
#########
plot(e_quakes$depth)


View(e_quakes)
plot(e_quakes$lat,e_quakes$long,type="p")
?plot

plot(e_quakes$lat,type="l") # p: points, l: lines,b: both
plot(e_quakes$lat,ylab="latitute",main = "latitute_earthquake",col="blue")
barplot(e_quakes$lat,main = "title",ylab = "lat",col='blue')
barplot(e_quakes$lat, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)

hist(e_quakes$lat)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(e_quakes$lat,main="Boxplot")
boxplot.stats(e_quakes$lat)$out

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,3,4,5), las=0,bty="o")

plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
barplot(e_quakes$lat, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(e_quakes$lat)
boxplot(e_quakes$lat)
boxplot(e_quakes[,0:4], main='Multiple Box plots')


sd(e_quakes$lat,na.rm = T)
var(e_quakes$lat,na.rm=T)
library(moments)
skewness(e_quakes$lat)
e_quakes
kurtosis(e_quakes$lat)
