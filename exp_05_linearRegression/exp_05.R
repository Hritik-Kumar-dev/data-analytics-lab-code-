# Experiment 5
# Simple Linear Regression

data <- read.csv("house_prices.csv")

str(data)

model <- lm(price ~ sqft_living, data=data)

summary(model)

# Create and save plot
png("regression_plot.png", width=800, height=600)
plot(data$sqft_living, data$price,
main="House Price vs Living Area",
xlab="Living Area (sqft)",
ylab="Price ($)",
col="blue",
pch=19)

abline(model, col="red", lwd=2)
dev.off()
cat("\nPlot saved to regression_plot.png\n")

new_data <- data.frame(sqft_living=c(1000,1500,2000))

predicted_prices <- predict(model, newdata=new_data)

cat("\nPredicted Prices for given square footage:\n")
print(predicted_prices)