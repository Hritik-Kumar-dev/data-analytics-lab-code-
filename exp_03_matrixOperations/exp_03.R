# Experiment 3
# Matrix Operations in R

# Sample matrices (3x3)
rows <- 3
cols <- 3

cat("Matrix A (sample data):\n")
A <- matrix(c(1, 2, 0, 3, 4, 0, 0, 0, 1), nrow=rows, ncol=cols, byrow=TRUE)
print(A)

cat("Matrix B (sample data):\n")
B <- matrix(c(5, 0, 1, 0, 3, 2, 1, 2, 1), nrow=rows, ncol=cols, byrow=TRUE)
print(B)

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