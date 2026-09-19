



citation()
install.packages("ggplot2")
library(ggplot2)

citation("ggplot2")
?lm

data("penguins")
View(penguins)
head(penguins,3)
tail(penguins,20)

# second column
sec.colum <- penguins[15,1] 
sec.colum

sec.colum <- penguins[3:5, 3]
sec.colum

mean(penguins$body_mass, na.rm = TRUE)

median(penguins$body_mass, na.rm = TRUE)

table(penguins$island)

prop.table(table(penguins$island))

summary(penguins)
summary(penguins$body_mass)

my_function <- function(input) {
  Body
  return(output)

c <- function(temp_F){
  temp_c <- (temp_F-32) * 5/9
  return(temp_c)
}

c(100)


# new function ------------------------------------------------------------
#(ctrl+shfit+r)

storms <- read.csv("storms.csv")
summary(storms)

#this create a new subset, just hurricanes
hurricane <- storms[storms$status == "hurricane",]
head(hurricane)

#select specific colums
hurricane <- hurricane[, c("name", "year", 
                           "category", "pressure", 
                           "wind")]
head(hurricane)

#create a function to classify wind velocity
classify_wind <- function(wind){
  if(wind<80){
    "Low"
  }else if(wind>110){
    "Moderate"
  }else {
    "High"
  }
}

#new class
hurricane$windclass <- sapply(
  hurricane$wind,
  classify_wind
)

head(hurricane)
table(hurricane$windclass)
