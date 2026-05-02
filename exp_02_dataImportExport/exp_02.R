# Experiment 2
# Data Import / Export in R

data <- read.csv("input.csv")

cat("Imported CSV File:\n")
print(head(data))

write.table(data, "output.txt", row.names=FALSE)
txt_data <- read.table("output.txt", header=TRUE)

write.csv(data, "output.csv", row.names=FALSE)
csv_data <- read.csv("output.csv")

if (!require("writexl", quietly=TRUE)) {
  dir.create(Sys.getenv("R_LIBS_USER"), showWarnings=FALSE, recursive=TRUE)
  install.packages("writexl", lib=Sys.getenv("R_LIBS_USER"))
  library(writexl)
}

write_xlsx(data, "output.xlsx")

cat("Files exported successfully.\n")