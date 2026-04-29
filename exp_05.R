# Experiment 5
# Simple Linear Regression

data <- read.csv("house_prices.csv")

str(data)

model <- lm(price ~ sqft_living, data=data)

summary(model)

plot(data$sqft_living, data$price,
main="House Price vs Living Area",
xlab="Living Area",
ylab="Price",
col="blue",
pch=19)

abline(model, col="red", lwd=2)

new_data <- data.frame(sqft_living=c(1000,1500,2000))

predicted_prices <- predict(model, newdata=new_data)

print(predicted_prices)