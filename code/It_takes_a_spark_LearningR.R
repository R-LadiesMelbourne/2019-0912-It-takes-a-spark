############################ Loading the data ##########################
data <- read.table("https://www.dropbox.com/s/utp3ehtq12sbtqt/Data.txt?dl=1",header = T)
View(data)

############################ Data explorations #########################
data$Firstname
data$Class
data$Age

############################ Plot #########################
# Plot Age vs Weight
plot(data$Age, data$Weight,xlab="Age",ylab="Weight")
# Plot Class vs Age
plot(data$Class,data$Age,xlab="Class",ylab="Age")

############################ Barplot #########################
## Barplot of the age
barplot(data$Age,main="Age")

## Barplot of the total number of each sex
barplot(summary(data$Sex))
## Barplot of the total number of sick
barplot(summary(data$Sickness))

# ############################ Boxplot #########################
# boxplot(data$Temperature~data$Sickness)


############# Apply some color filter on the plot ######################
# Plot Age vs Weight and add a different color for male
plot(data$Age, data$Weight,xlab="Age",ylab="Weight")
# Define male
Male<-data$Sex=="M"
# Add a different color for male
points(data$Age[Male], data$Weight[Male],pch=16, col="steelblue")

## Plot Temperature vs Weight and add a different color for sick
plot(data$Temperature, data$Weight,xlab="Temperature",ylab="Weight")
# Define sick
Sick<-data$Sickness=="Y"
# Add a different color for sick students
points(data$Temperature[Sick], data$Weight[Sick],pch=16, col="red")


############################ Pie plots ###########################
## Plot the proportion of shortness of breath for sick and healthy
par(mfrow=c(1,2) ) # 1 row and 2 columns for plots
pie( table(data$shortness_of_breath[data$Sickness=="Y"]),  xlab="Sick",main = "Shortness breath")
pie( table(data$shortness_of_breath[data$Sickness=="N"]),xlab="Non-sick",main = "Shortness breath")


## Plot the proprtions of chills of breath for sick and healthy
par(mfrow=c(1,2) ) # 1 row and 2 columns for plots
pie( table(data$chills[data$Sickness=="Y"]), xlab="Sick",main = "Chills")
pie( table(data$chills[data$Sickness=="N"]), xlab="Healthy",main="Chills")


