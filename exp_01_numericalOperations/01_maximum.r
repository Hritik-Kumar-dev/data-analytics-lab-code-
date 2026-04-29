# Maximum Operation

input_str <- readline(prompt="Enter numbers separated by space: ")
input_nums <- as.numeric(unlist(strsplit(input_str," ")))

cat("You entered:", input_nums, "\n")
maximum <- max(input_nums)
cat("Maximum:", maximum, "\n")
