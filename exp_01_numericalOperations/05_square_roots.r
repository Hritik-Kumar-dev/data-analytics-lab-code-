# Square Roots Operation

input_str <- readline(prompt="Enter numbers separated by space: ")
input_nums <- as.numeric(unlist(strsplit(input_str," ")))

cat("You entered:", input_nums, "\n")
square_roots <- sqrt(input_nums)
cat("Square Roots:", square_roots, "\n")
