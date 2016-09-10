
library(tidyr)
library(trendct)

## Private

private <- read.csv ("private.csv", stringsAsFactors=FALSE)

df_long <- gather(private, "date", "employment", 2:27)
df_long$employment <- df_long$employment*1000
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]


trendchart(df_long, headline = "Connecticut private sector employment", subhead = "As of November 2015.", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")
## Non Farm

nonfarm <- read.csv ("nonfarm.csv", stringsAsFactors=FALSE)

df_long <- gather(nonfarm, "date", "employment", 2:35)
df_long$employment <- df_long$employment*1000

df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut nonfarm employment", subhead = "As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")

## Other

other <- read.csv ("other.csv", stringsAsFactors=FALSE)

df_long <- gather(other, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut other employment", subhead = "As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")

## Govt


govt <- read.csv ("govt.csv", stringsAsFactors=FALSE)

df_long <- gather(govt, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut government employment", subhead = "As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")

## Leisure

leisure <- read.csv ("leisure.csv", stringsAsFactors=FALSE)

df_long <- gather(leisure, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut leisure and hospitality employment", subhead = "Which includes  the arts, entertainment, and recreation sectors, and the accommodation and food services sector. As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")


## education

edu <- read.csv ("edu.csv", stringsAsFactors=FALSE)

df_long <- gather(edu, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut education employment", subhead = "Which includes  the educational services sector, and the health care and social assistance sector. As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")

## Professional

prof <- read.csv ("professional.csv", stringsAsFactors=FALSE)

df_long <- gather(prof, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut professional employment", subhead = "Which includes  the professional, scientific, and technical services sector, the management of companies and enterprises sector, and the administrative and support and waste management and remediation services sector. As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")


## Information

info <- read.csv ("information.csv", stringsAsFactors=FALSE)

df_long <- gather(info, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut information employment", subhead = "Which includes establishments that produce and distribute information and cultural products, provides the means to transmit or distribute these products as well as data or communications, and processing data. As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")


## Trade

trade <- read.csv ("trade.csv", stringsAsFactors=FALSE)

df_long <- gather(trade, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut trade, transportation, and utilities employment", subhead = "As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")



## Manufacturing

manu <- read.csv ("manufacturing.csv", stringsAsFactors=FALSE)

df_long <- gather(manu, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut manufacturing employment", subhead = "Which consists of establishments engaged in the mechanical, physical, or chemical transformation of materials, substances, or components into new products. As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")



## Construction

const <- read.csv ("construction.csv", stringsAsFactors=FALSE)

df_long <- gather(const, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut construction employment", subhead = "As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")


## Financial

fin <- read.csv ("financial.csv", stringsAsFactors=FALSE)

df_long <- gather(fin, "date", "employment", 2:27)
df_long$date <- gsub("X", "", df_long$date)
df_long$date <- gsub("\\.00", "", df_long$date)
df_long$date <- paste(df_long$Month, df_long$date, sep=" ")
df_long$Month <- NULL
df_long <- df_long[-nrow(df_long),]

trendchart(df_long, headline = "Connecticut financial employment", subhead = "Consists of the finance and insurance sector, and the real estate and rental and leasing sector. As of November 2015", src = "Connecticut Department of Labor",
           byline = "TrendCT.org", type = "line", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")



