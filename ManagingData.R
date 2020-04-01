

#Managing Data Using R

library(ggplot2)
custdata <- read.table('https://github.com/scizmeli/datascience_class_helper_files/raw/master/custdata1.tsv',header=T,sep=',')

summary(custdata[,c("housing.type" ,"recent.move" , "num.vehicles" , "is.employed")])



custdata$is.employed.fix <- ifelse(is.na(custdata$is.employed),
                                   "missing",
                                   ifelse(custdata$is.employed==T,
                                          "employed",
                                          "not employed"))
summary(as.factor(custdata$is.employed.fix))



custdata$is.employed.fix <- ifelse(is.na(custdata$is.employed),
                                   "not in active workforce",
                                   ifelse(custdata$is.employed==T,
                                          "employed",
                                          "not employed"))
summary(as.factor(custdata$is.employed.fix))

#MISSING VALUES IN NUMERIC DATA
summary(custdata$Income)

meanIncome <- mean(custdata$Income, na.rm=T)
meanIncome

#WHEN VALUES ARE MISSING RANDOMLY
meanIncome <- mean(custdata$Income, na.rm=T)

Income.fix <- ifelse(is.na(custdata$Income),
                     meanIncome, custdata$Income)

summary(Income.fix)


#WHEN VALUES ARE MISSING SYSTEMATICALLY.

breaks <-c(0, 10000, 50000, 100000, 250000, 1000000)

Income.groups <-
  cut(custdata$Income,breaks = breaks, include.lowest=T)

summary(Income.groups)

Income.groups <- as.character(Income.groups)

Income.groups <- ifelse(is.na(Income.groups),"no income", Income.groups)

summary(as.factor(Income.groups))



# Data transformations

medianincome <- aggregate(income~state.of.res,custdata,FUN=median)
colnames(medianincome) <- c('State','Median.Income')
summary(medianincome) 

is.data.frame(medianincome)

head(medianincome)

custdata <- custdata[, names(custdata)!="Median.Income"]
custdata <- merge(custdata, medianincome, by.x = "state.of.res", by.y="State")

head(custdata[, c("state.of.res","income","Median.Income")])

summary(custdata[, c("state.of.res","income","Median.Income")])

custdata$income.norm <- with(custdata, income/Median.Income)

summary(custdata$income.norm)

#Normalize with income.norm

ggplot(subset(custdata, custdata$income > 1000), aes(x=income, y=as.numeric(health.ins))) +
  geom_point(alpha=0.5, position=position_jitter(w=0.05, h=0.05)) + geom_smooth() + scale_x_log10() + 
  annotation_logticks(sides="bt") 

#You see that you can replace the income variable with a Boolean variable that indicates whether income is less than $20,000

custdata$income.lt.20K <- custdata$income < 20000
summary(custdata$income.lt.20K)

