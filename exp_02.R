# Experiment 2
# Data Import / Export in R

data <- read.csv("input.csv")

cat("Imported CSV File:\n")
print(head(data))

write.table(data, "output.txt", row.names=FALSE)
txt_data <- read.table("output.txt", header=TRUE)

write.csv(data, "output.csv", row.names=FALSE)
csv_data <- read.csv("output.csv")

install.packages("writexl")
library(writexl)

write_xlsx(data, "output.xlsx")

cat("Files exported successfully.\n")