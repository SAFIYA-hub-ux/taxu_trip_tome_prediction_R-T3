# Load necessary libraries
library(ggplot2)

# Load the data from your local machine
file_path <- 'C:/Users/91944/Downloads/NYC Taxi Data.csv'  # Replace with your actual file path
data <- read.csv(file_path)


X <- data$dropoff_longitude  # Replace with the actual column name
y <- data$pickup_longitude  # Replace with the actual column name

# Create the linear regression model
model <- lm(y ~ X)

# Make predictions for the linear regression line
y_pred <- predict(model)

# Combine the predicted values with the original data
data$y_pred <- y_pred

# Plotting the results using ggplot2
ggplot(data, aes(x = X, y = y)) +
  geom_point(color = 'blue') +  # Scatter plot for actual data
  geom_line(aes(y = y_pred), color = 'red') +  # Line for the regression model
  labs(x = 'dropoff_longitude', y = 'pickup_longitude', title = 'Linear Regression Plot') +
  theme_minimal()

library(readr)


head(data)
dim(data)
str(data)
summary(data)
colSums(is.na(data))
colnames(data)




