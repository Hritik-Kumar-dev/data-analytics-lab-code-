# Experiment 6
# Data Preprocessing

data <- data.frame(
ID=1:5,
Age=c(25, NA, 35, 40, NA),
Salary=c(50000, 60000, NA, 80000, 75000)
)

cat("Original Data:\n")
print(data)

data_removed <- na.omit(data)

cat("After Removing Missing Values:\n")
print(data_removed)

data_replaced <- data

data_replaced$Age[is.na(data_replaced$Age)] <- mean(data$Age, na.rm=TRUE)

data_replaced$Salary[is.na(data_replaced$Salary)] <- median(data$Salary, na.rm=TRUE)

cat("After Replacing Missing Values:\n")
print(data_replaced)

min_max_normalize <- function(x){
(x-min(x))/(max(x)-min(x))
}

data_normalized <- data_replaced

data_normalized$Age <- min_max_normalize(data_replaced$Age)
data_normalized$Salary <- min_max_normalize(data_replaced$Salary)

cat("After Normalization:\n")
print(data_normalized)