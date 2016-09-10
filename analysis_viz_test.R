library(RCurl)
url <- "https://docs.google.com/spreadsheets/d/12aD6kZmrGWpemJB5UeT5R6_Thx2qxi-K_B9eEf0rf1M/pub?output=csv&id=12aD6kZmrGWpemJB5UeT5R6_Thx2qxi-K_B9eEf0rf1M"
the_csv <- getURL(url,.opts=list(ssl.verifypeer=FALSE))

pop <- read.csv(textConnection(the_csv))

library(trendct)

trendmap(pop, headline="Test State map for R generator", subhead="This is a subhead",
         src="", byline="TrendCT.org", url_append="date", shape="states", color="yellow-red")
