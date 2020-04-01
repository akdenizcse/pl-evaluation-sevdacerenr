
#Exploring Data

custdata <- read.table('https://github.com/scizmeli/datascience_class_helper_files/raw/master/custdata1.tsv',header=T,sep=',')

head(custdata)
summary(custdata)
class(custdata$income)

#PLOT
plot(custdata$income, col = "red")

#library(ggplot)
library(ggplot2)
library(scales)
ggplot(custdata) + geom_density(aes(x=income)) +
  scale_x_continuous(labels=dollar)

ggplot(custdata) + 
  geom_bar(aes(x=state.of.res), 
           fill="purple") +
  coord_flip() +
  theme(axis.text.y=element_text(size=rel(0.8)))

# BAR CHARTS FOR TWO CATEGORICAL VARIABLES
ggplot(custdata) + geom_bar(aes(x=marital.stat,
                                fill=health.ins))

ggplot(custdata, aes(x=marital.stat)) +
  geom_bar(aes(fill=health.ins), position="fill") +
  geom_point(aes(y=-0.05), size=0.75, alpha=0.3,
             position=position_jitter(h=0.01))

ggplot(custdata) +
  geom_bar(aes(x=housing.type, fill=marital.stat ),
           position
           ="dodge") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Examining the correlation between age and income
custdata2 <- subset(custdata,(custdata$age > 0 & custdata$age < 100 & custdata$income > 0))
cor(custdata2$age, custdata2$income)
head(custdata2)

ggplot(custdata2, aes(x=age, y=income)) +
  geom_point() + ylim(0, 200000)

ggplot(custdata2, aes(x=age, y=income)) + geom_point() + stat_smooth(method="lm") +
  ylim(0, 200000)

ggplot(custdata2, aes(x=age, y=income)) + geom_point() + geom_smooth() +
  ylim(0, 200000)

#HEXBIN PLOTS
#install.packages("hexbin")
library(hexbin)
ggplot(custdata2, aes(x=age, y=income)) + geom_hex(binwidth=c(5, 10000)) +
  geom_smooth(color="white", se=F) +
  ylim(0,200000)

