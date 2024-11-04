Load the PlantGrowth dataset
data(PlantGrowth)
View(PlantGrowth)
dim(PlantGrowth)
summary(PlantGrowth)
str(PlantGrowth)
head(PlantGrowth)
tail(PlantGrowth)
names(PlantGrowth)
library(dplyr)
glimpse(PlantGrowth) 
# 1. Barplot of Mean Plant Weight for Each Treatment Group
 mean_weights <- tapply(PlantGrowth$weight, PlantGrowth$group, mean)  # Calculate mean weights
Bar<-barplot(mean_weights, 
        main="Mean Plant Weight by Treatment Group", 
        xlab="Treatment Group", ylab="Mean Weight", 
        col=c("lightblue", "lightgreen", "lightcoral"))
Bar

# 2. Strip Chart (Dot Plot) of Plant Weights by Treatment Group
Strip<- stripchart(weight ~ group, data=PlantGrowth, 
           main="Strip Chart of Plant Growth by Group", 
           vertical=TRUE, method="jitter", 
           col=c("blue", "green", "red"), pch=19, 
           xlab="Treatment Group", ylab="Plant Weight")
Strip

# 3. Pie Chart of Plant Counts by Treatment Group
 group_counts <- table(PlantGrowth$group)  # Count number of plants in each group
Pie<-pie(group_counts, 
    main="Pie Chart of Plant Counts by Treatment Group", 
    col=c("lightblue", "lightgreen", "lightcoral"), 
    labels=c("Control", "Treatment 1", "Treatment 2"))
Pie

# 4. Scatter Plot of Plant Weights
Scatter<- plot(PlantGrowth$weight, 
     main="Scatter Plot of Plant Weights", 
     xlab="Plant Index", ylab="Plant Weight", 
     col="darkgreen", pch=16)
Scatter

# 5. Boxplot with Colored Borders
Box<- boxplot(weight ~ group, data=PlantGrowth, 
        main="Boxplot with Colored Borders", 
        xlab="Treatment Group", ylab="Plant Weight", 
        col=c("lightblue", "lightgreen", "lightcoral"), 
        border=c("darkblue", "darkgreen", "darkred"))
Box

Hist<- hist(PlantGrowth$weight, 
     main="Histogram of Plant Weights", 
     xlab="Plant Weight", col="lightblue", border="black")
Hist