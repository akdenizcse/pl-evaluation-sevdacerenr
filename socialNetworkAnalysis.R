
library(ggplot2)
library(scales)
library(igraph)

###Social Network Analysis
#Lets think it is a Twitter Analysis.
#Every vertex account and these account can follow each other

##Read Data File

data <- read.csv(file.choose(), header=T) #We shared this data in Github(networkdata.csv)
head(data) 
##This data's first column represent id of twitter account
##Second column represent id of a person who is follow first column on twitter


y <- data.frame(data$first, data$second)


##Create Network

net <- graph.data.frame(y, directed = T)
V(net)
E(net)
V(net)$label <- V(net)$name
V(net)$degree <- degree(net)


##Histogram of Node Degree

hist(V(net)$degree,
     col = 'green',
     main = 'Histogram of Node Degree',
     ylab = 'Frequency',
     xlab = 'Degree of Vertices')

##Network Diagram
set.seed(222)  
plot(net,
     vertex.color = 'yellow',
     vertex.size = 20,
     edge.arrow.size = 0.6,
     vertex.label.cex = 0.8)

##Highlighting Degrees and Layouts

##Highest degree is the biggest one lowest degree is smallest one.
#We will show you 3 ways in Force-directed graph drawing algorithms

plot(net,
     vertex.color = rainbow(52),
     vertex.size = V(net)$degree*0.4,
     edge.arrow.size = 0.1,
     layout= layout.fruchterman.reingold)

plot(net,
     vertex.color = rainbow(52),
     vertex.size = V(net)$degree*0.4,
     edge.arrow.size = 0.1,
     layout= layout.graphopt)

plot(net,
     vertex.color = rainbow(52),
     vertex.size = V(net)$degree*0.4,
     edge.arrow.size = 0.1,
     layout= layout.kamada.kawai)
     

##Hub and Authorities

hs <- hub_score(net)$vector 
as <- authority.score(net)$vector

par(mfrow= c(1,2))
set.seed(123)

#hs*30 means if node has more ougoing links it will be bigger
plot(net,
     vertex.size=hs*30,
     main = 'Hubs',
     vertex.color = rainbow(52),
     edge.arrow.size = 0.1,
     layout = layout.kamada.kawai)

#biggest one is the maximum incoming links
plot(net,
     vertex.size=as*30,
     main = 'Authorities',
     vertex.color = rainbow(52),
     edge.arrow.size = 0.1,
     layout = layout.kamada.kawai)

##Comminity Detection
net <- graph.data.frame(y,directed= F)
cnet <- cluster_edge_betweenness(net)

plot(cnet,
     net,
     vertex.size=10,
     vertex.label.cex =0.8)









