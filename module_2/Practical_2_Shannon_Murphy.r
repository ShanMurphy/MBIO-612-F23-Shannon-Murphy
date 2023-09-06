original_matrix=matrix(c(1,2,3,4,5,6), nrow=3)
# This is the original matrix
original_matrix

# Redefine the original matrix, setting the number of columns and rows, and changing the sequence of values from down each column to each row. 
original_matrix=matrix(c(1,2,3,4,5,6), ncol= 2, nrow=3, byrow=TRUE)

# We use colnames to name each column 
colnames(original_matrix)= c("col_1", "col_2")

# We use row names to name each row 
rownames(original_matrix)= c("row_1", "row_2", "row_3")

# Here we are displaying the matrix
original_matrix

# Loading in and viewing airquality data 
data(airquality)
# I would like to work with the top 6 lines instead of the entire data frame
head(airquality)

# Double checking the column names we have under airquality
names(airquality)

# Defining each column as an individual vector since the two columns cannot be combined into one vector from the data frame
# The space denotes the "row" we would extract from in the data frame, but since we only want column Temp or Solar, we insert a blank comma
Temp_vector <- airquality[ , c("Temp")]
Solar.R_vector <- airquality[ , c("Solar.R")]

# printing to double check if temp and solar.r are individual vectors 
print(Temp_vector)
print(Solar.R_vector)

# This deemed successful!

# Now we are redefining our vectors so they are sorted in reverse order
Temp_sorted <- Temp_vector[order(-Temp_vector)]
Solar.R_sorted <- Solar.R_vector[order(-Solar.R_vector)]

# Sort the two vectors into a data frame
sorted_df <- data.frame(Temp_sorted, Solar.R_sorted)

# Print the data frame with the first 15 lines
head(sorted_df, n= 15)

# This is an alternative way that I found to sort and arrange the data 
# Installing dplyr package to arrange and sort data
install.packages("dplyr")
library(dplyr)

# Use arrange from the dplyr package to sort by Temp and Solar.R
# We also only want to view the first 15 rows of data 
# Data is in the descending order 
head(arrange(airquality, -Temp, -Solar.R), n = 15)

# This alternatively sorts the data by keeping the all of the data in each row together. It sorts first by temperature, then organizes the rest of the data by Solar.R

# Created a new vector which indicates temperature in descending order and solar in ascending order
Temp_sorted_2 <- Temp_vector[order(-Temp_vector)]
Solar.R_sorted_2 <- Solar.R_vector[order(Solar.R_vector)]

# Putting the vectors in the data frame
sorted_df <- data.frame(Temp_sorted_2, Solar.R_sorted_2)

# Printing the data frame with the first 15 lines
head(sorted_df, n= 15)

# $ tells you to extract a subset of data from a data object
# Table will tell you how many observations there are for the requirement, so we have 3 observations from Temp of 72
Temp <- airquality$Temp ==72
table(Temp)

# Tells you which rows in airquality have the temperature equal to 72 
airquality[which(airquality$Temp=="72"),]

# Subset returns a selection of values with respect to the criteria of Temp equal to 72 degrees. 
subset(airquality, (Temp==72))

# I named a new vector, Temp_72 from airquality and asked to find the data in the column where Temp was equal to 72
Temp_72 <- airquality$Temp ==72

airquality[Temp_72, ]

# Sum of airquality demonstrates that there are 44 objects of missing data, with 7 of those from Solar.R and 37 from Ozone 
sum(is.na(airquality))
sum(is.na(airquality$Solar.R))
sum(is.na(airquality$Ozone))

# Now we are removing the rows with NA and renaming the vector. 
airquality_no_na <- na.omit(airquality)
print(airquality_no_data)

# I printed the number of rows for the new vector that does not include any NA, therefore, there are 111
print(nrow(airquality_no_na))

# I wanted to check out the ordered data frame based on Month 5
Solar.R_order <- airquality[order(airquality$"Month"), ]
Solar.R_order

# This is the mean of Solar.R using month 5 and excluding NA values
Solar.R_mean <- mean(airquality$Solar.R[airquality$Month==5], na.rm=TRUE)
Solar.R_mean

# I printed airquality and said to exclude na values from Solar.R based on the mean calculated above
airquality[is.na(airquality$Solar.R), "Solar.R"] <- Solar.R_mean
print(airquality)
