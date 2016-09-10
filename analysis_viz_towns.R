bytown <- read.csv("by_town.csv")

d <- boxplot(Unemployment.Rate~Affected,data=bytown, main="Food stamp access", 
        xlab="Able-Bodied Adults Without Dependents", ylab="Unemployment rate")
library(ggplot2)
ggplot(bytown, aes(Unemployment.Rate, fill=Affected)) +
  geom_histogram(binwidth = .1)


p <- ggplot(bytown, aes(Unemployment.Rate)) +
  geom_histogram(binwidth = 1)
p + facet_grid(. ~ Affected)


p <- ggplot(mtcars, aes(wt, mpg))
p + geom_point(aes(colour = factor(cyl)))

head(bytown)
bytown$Town <- sub("No. Stonington", "North Stonington", bytown$Town)

library(ctnamecleaner)
bytown2 <- ctpopulator(Town, bytown)



poverty <- read.csv("poverty.csv", stringsAsFactors=FALSE)

library(dplyr)
bytown3 <- left_join(bytown, poverty)

p <- ggplot(bytown3, aes(Unemployment.Rate, Poverty))
p + geom_point(aes(colour = factor(Affected)))
town_r <- subset(bytown3, Affected=="Required")
town_nr <- subset(bytown3, Affected=="No requirements")
town_r <- town_r[c("Town", "Poverty", "Unemployment.Rate")]
town_nr <- town_nr[c("Town", "Poverty", "Unemployment.Rate")]

library(trendct)
trendchart(town_r, headline = "Unemployment versus poverty rate by town", subhead = "", src = "",
           byline = "Andrew Ba Tran/TrendCT.org", type = "scatter", xTitle = "Unemployment rate", yTitle = "Poverty rate",
           xSuffix = "%", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

trendchart(town_nr, headline = "Unemployment versus poverty rate by town2", subhead = "", src = "",
           byline = "Andrew Ba Tran/TrendCT.org", type = "scatter", xTitle = "Unemployment rate", yTitle = "Poverty rate",
           xSuffix = "%", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")
