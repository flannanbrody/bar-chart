prices <- read.csv("/Users/flannanbrody/github/dataviz-home/bar-chart/subscription-prices.csv")
class(prices)
dim(prices)
head(prices)
head(prices, n=20)
names(prices)
prices$X2013
prices$X2013[1:10]
class(prices$X2013)
?head
prices[1,]
prices[,1]
prices[,c("Network")]
prices[1:10,c("Network")]
prices <- prices[order(prices$X2013, decreasing=T),]
plot(prices$X2013)

#plot(prices$X2013)

barplot(prices$X2013, col="lightgrey", border=F, main="Total control!", ylab="Price")

#sorting
prices <- prices[order(prices$X2013),]
barcolors <- ifelse(prices$Network == "ESPN", "red", "lightgrey")

barplot(prices$X2013, col=barcolors, border=F, main="Now with custom colors!", ylab="Price")

#? then the name of the method
?plot
?barplot
##or, if you want fuzzy matching, try this
help.search("bar plot")

