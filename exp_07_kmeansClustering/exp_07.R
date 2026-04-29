# Experiment 7
# K-Means Clustering using Iris Dataset

iris_data <- read.csv("iris.csv", header=TRUE)

iris_features <- iris_data[,1:4]

set.seed(101)

kmeans_result <- kmeans(iris_features, centers=3, nstart=20)

print(kmeans_result)

install.packages("cluster")
library(cluster)

clusplot(
iris_features,
kmeans_result$cluster,
color=TRUE,
shade=TRUE,
labels=2,
lines=0
)