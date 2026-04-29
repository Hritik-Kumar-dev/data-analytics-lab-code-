# Experiment 3
# Matrix Operations in R

rows <- as.integer(readline(prompt="Enter rows: "))
cols <- as.integer(readline(prompt="Enter columns: "))

cat("Enter elements of Matrix A:\n")
vecA <- scan(n=rows*cols)
A <- matrix(vecA, nrow=rows, ncol=cols, byrow=TRUE)

cat("Enter elements of Matrix B:\n")
vecB <- scan(n=rows*cols)
B <- matrix(vecB, nrow=rows, ncol=cols, byrow=TRUE)

cat("Matrix A:\n")
print(A)

cat("Matrix B:\n")
print(B)

cat("Addition:\n")
print(A+B)

cat("Subtraction:\n")
print(A-B)

cat("Element Wise Multiplication:\n")
print(A*B)

if(ncol(A)==nrow(B)){
  cat("Matrix Multiplication:\n")
  print(A %*% B)
}

cat("Transpose of A:\n")
print(t(A))

if(rows==cols){
  if(det(A)!=0){
    cat("Inverse of A:\n")
    print(solve(A))
  }

  if(det(B)!=0){
    cat("Division A * inverse(B):\n")
    print(A %*% solve(B))
  }
}