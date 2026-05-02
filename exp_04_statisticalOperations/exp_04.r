# Experiment 4
# Statistical Operations

# Sample data
data <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 10, 20, 30)

cat("Data:\n")
print(data)

cat("Mean =", mean(data), "\n")
cat("Median =", median(data), "\n")

get_mode <- function(x){
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

cat("Mode =", get_mode(data), "\n")
cat("Standard Deviation =", sd(data), "\n")