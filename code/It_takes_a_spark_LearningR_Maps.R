
#################### School map #################
dev.off()
# Load the map file
map <- load(file="~/WEHI/R_ladies/It_Takes_Spark/Map.rda")
# Load the coordinates data of the students
map_data=read.delim("~/WEHI/R_ladies/It_Takes_Spark/Coordinates_student_data.txt")

# Plot the map
plot(melb_map)

# Add points with color for the sick students
points(map_data$Longitude[map_data$Sickness == "Y"], map_data$Latitude[map_data$Sickness == "Y"], col = "red", cex = 5)
# Add points with color for the healthyn students
points(map_data$Longitude[map_data$Sickness == "N"], map_data$Latitude[map_data$Sickness == "N"], cex = 5)



