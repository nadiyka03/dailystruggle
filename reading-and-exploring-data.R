# set working directory
# this is the location of your scripts folder 
setwd("/Users/nadiiakuzmenko/Documents/programming_code/scripts")

# adding data as variable
read.csv("../data/heart_attack_data.csv", header=TRUE)
heart_data <- read.csv("../data/heart_attack_data.csv", header=TRUE)

read.csv("../data/rotten_tomatoes_movies.csv", header=TRUE)
rotten_tomatoes_movies.csv <- read.csv("../data/rotten_tomatoes_movies.csv", header=TRUE)

# to get info about the type of variable
class(heart_data)

# check the shape of data (rows and columns)
dim(heart_data)

#check the structure of data (diff data type of the DataFrame)
str(heart_data)

# GENERATE DESCRIPTIVE STATISTICS FOR THE DataFrame
summary(heart_data)

#selecting a single variable
heart_data$sex

# identify the unique values of the variables
unique(heart_data$sex)

# factor the variable
heart_data$sex <- factor(heart_data$sex)

summary(heart_data)

# question: any other colums we could convert to factor?
heart_data$cp <- factor(heart_data$cp)
heart_data$fbs <- factor(heart_data$fbs)
heart_data$age <- factor(heart_data$age)
summary(heart_data)
heart_data$trestbps <- factor(heart_data$trestbps)
summary(heart_data)