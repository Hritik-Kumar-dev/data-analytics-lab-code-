# Rounded Values Operation

input_str <- readline(prompt="Enter numbers separated by space: ")
input_nums <- as.numeric(unlist(strsplit(input_str," ")))

cat("You entered:", input_nums, "\n")
rounded_values <- round(input_nums, digits=2)
cat("Rounded Values:", rounded_values, "\n")
