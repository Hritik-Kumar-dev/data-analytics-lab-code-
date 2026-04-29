# Sum Operation

input_str <- readline(prompt="Enter numbers separated by space: ")
input_nums <- as.numeric(unlist(strsplit(input_str," ")))

cat("You entered:", input_nums, "\n")
total_sum <- sum(input_nums)
cat("Sum:", total_sum, "\n")
