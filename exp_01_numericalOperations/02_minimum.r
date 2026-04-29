# Minimum Operation

input_str <- readline(prompt="Enter numbers separated by space: ")
input_nums <- as.numeric(unlist(strsplit(input_str," ")))

cat("You entered:", input_nums, "\n")
minimum <- min(input_nums)
cat("Minimum:", minimum, "\n")
