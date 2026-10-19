# Recovered coursework R command history. Verify order and missing interactive context before running.
xlab = "x1",
ylab = "x2",
main = paste("Decision Boundary for k =", k_val)
)
points(grid, col = as.numeric(grid_pred), pch = ".")
}
plot_decision_boundary(15, train_data, train_data$y)
plot_decision_boundary(1, train_data, train_data$y)
# 8. Load the test data and calculate empirical error rate
test_data <- read.table("../Data/synth_test.txt", header = TRUE)
cat("Test Data:\n")
print(test_data)
for (k_val in c(15, 1)) {
test_pred <- knn(
train = train_data[, c("x1", "x2")],
test = test_data[, c("x1", "x2")],
cl = train_data$y,
k = k_val
)
error_rate <- mean(test_pred != test_data$y)
cat("Test Error Rate for k =", k_val, ":", error_rate, "\n")
}
# 9. Calculate True Positive Rate (TPR) and True Negative Rate (TNR)
conf_matrix <- table(Predicted = test_pred, Actual = test_data$y)
TP <- conf_matrix["1", "1"]
FN <- conf_matrix["2", "1"]
FP <- conf_matrix["1", "2"]
TN <- conf_matrix["2", "2"]
TPR <- TP / (TP + FN)
TNR <- TN / (TN + FP)
cat("True Positive Rate (TPR):", TPR, "\n")
cat("True Negative Rate (TNR):", TNR, "\n")
# 10. Implement prob_knn function for posterior probabilities
prob_knn <- function(train, test, cl, k) {
pred_probs <- numeric(nrow(test))
for (i in 1:nrow(test)) {
distances <- sqrt(rowSums((train - test[i, ])^2))
nearest_indices <- order(distances)[1:k]
nearest_classes <- cl[nearest_indices]
pred_probs[i] <- mean(nearest_classes == 1)
}
return(pred_probs)
}
test_probs <- prob_knn(train_data[, c("x1", "x2")], test_data[, c("x1", "x2")], train_data$y, k = 15)
cat("Posterior probabilities:\n")
print(test_probs)
prob_knn <- function(train, test, cl, k) {
pred_probs <- numeric(nrow(test)) # Vector to store posterior probabilities
for (i in 1:nrow(test)) {
# Calculate distances between the current test point and all training points
distances <- sqrt(rowSums((as.matrix(train) - as.numeric(test[i, ]))^2))
# Get indices of the k nearest neighbors
nearest_indices <- order(distances)[1:k]
# Get the classes of the k nearest neighbors
nearest_classes <- cl[nearest_indices]
# Calculate the posterior probability of class 1
pred_probs[i] <- mean(nearest_classes == 1)
}
return(pred_probs)
}
test_probs <- prob_knn(train_data[, c("x1", "x2")], test_data[, c("x1", "x2")], train_data$y, k = 15)
cat("Posterior probabilities:\n")
print(test_probs)
conf_matrix <- table(Predicted = test_pred, Actual = test_data$y)
TPR <- TP / (TP + FN)
TNR <- TN / (TN + FP)
# 4. Plot the data with colors and symbols
> plot(
+     train_data$x1, train_data$x2,
+     col = train_data$y,
+     pch = 19,
+     xlab = "x1",
+     ylab = "x2",
+     main = "Training Data Plot"
+ )
> legend(
+     "topright",
+     legend = unique(train_data$y),
+     col = unique(train_data$y),
+     pch = 19,
+     title = "Class"
+ )
# 4. Plot the data with colors and symbols
plot(
train_data$x1, train_data$x2,
col = train_data$y,
pch = 19,
xlab = "x1",
ylab = "x2",
main = "Training Data Plot"
)
legend(
"topright",
legend = unique(train_data$y),
col = unique(train_data$y),
pch = 19,
title = "Class"
)
# 7. Decision boundary for k = 15 and k = 1
plot_decision_boundary <- function(k_val, data, labels) {
x_range <- seq(min(data$x1) - 1, max(data$x1) + 1, length = 100)
y_range <- seq(min(data$x2) - 1, max(data$x2) + 1, length = 100)
grid <- expand.grid(x1 = x_range, x2 = y_range)
grid_pred <- knn(
train = data[, c("x1", "x2")],
test = grid,
cl = labels,
k = k_val
)
plot(
data$x1, data$x2,
col = data$y,
pch = 19,
xlab = "x1",
ylab = "x2",
main = paste("Decision Boundary for k =", k_val)
)
points(grid, col = as.numeric(grid_pred), pch = ".")
}
plot_decision_boundary(15, train_data, train_data$y)
plot_decision_boundary(1, train_data, train_data$y)
# Create the confusion matrix for the test data predictions
conf_matrix <- table(Predicted = test_pred, Actual = test_data$y)
# Extract True Positives (TP), False Negatives (FN), False Positives (FP), True Negatives (TN)
TP <- conf_matrix["1", "1"]
FN <- conf_matrix["2", "1"]
FP <- conf_matrix["1", "2"]
TN <- conf_matrix["2", "2"]
# Calculate the True Positive Rate (TPR) - Sensitivity or Recall
TPR <- TP / (TP + FN)
# Calculate the True Negative Rate (TNR) - Specificity
TNR <- TN / (TN + FP)
# Display the results
cat("True Positive Rate (TPR):", TPR, "\n")
cat("True Negative Rate (TNR):", TNR, "\n")
# Charger les données
load("real_data.rda")
load("../Data/real_data.rda")  # Use the correct file path here
# Afficher la dimension de l'ensemble de données
dim(real_data)
real_data <- load("../Data/real_data.rda")
# Check the dimensions of the dataset
dim(real_data)
# Check the dimensions of the dataset
dim(real_data)
load("../Data/real_data.rda")  # Correct file path
# Check the dimensions of the dataset
dim(data)
real_data <- data
# Display the first 6 records
head(real_data)
# Set a random seed for reproducibility
set.seed(123)
# Split the dataset into training (75%) and testing (25%) sets
train_index <- sample(1:nrow(real_data), 0.75 * nrow(real_data))  # Randomly select 75% of the data
train_data <- real_data[train_index, ]  # Training set
test_data <- real_data[-train_index, ]  # Testing set
# Check the dimensions of both datasets
dim(train_data)
dim(test_data)
# Load the necessary library for k-NN
library(class)
# Initialize a vector to store the error rates for each value of k
error_rates <- numeric(100)
# Loop through k values from 1 to 100 and calculate the error rates
for (k in 1:100) {
# Perform k-NN classification
knn_pred <- knn(train_data[, -ncol(real_data)], test_data[, -ncol(real_data)],
cl = train_data$y, k = k)  # Assuming 'y' is the outcome variable
# Calculate the error rate
error_rates[k] <- mean(knn_pred != test_data$y)
}
# Plot the error rate vs. k
plot(1:100, error_rates, type = "l", xlab = "k", ylab = "Test Error Rate", main = "Test Error Rate vs. k")
# Load the necessary library for k-NN
library(class)
# Assuming 'real_data' is already loaded and the outcome variable is 'y'
# Splitting the data into train and test sets
set.seed(123)  # For reproducibility
# Create a 75%/25% split (train: 945, test: 315)
train_indices <- sample(1:nrow(real_data), 0.75 * nrow(real_data))
train_data <- real_data[train_indices, ]
test_data <- real_data[-train_indices, ]
# Initialize a vector to store the error rates for each value of k
error_rates <- numeric(100)
# Loop through k values from 1 to 100 and calculate the error rates
for (k in 1:100) {
# Perform k-NN classification
knn_pred <- knn(train_data[, -ncol(real_data)], test_data[, -ncol(real_data)],
cl = train_data$y, k = k)  # Assuming 'y' is the outcome variable
# Calculate the error rate
error_rates[k] <- mean(knn_pred != test_data$y)
}
# Plot the error rate vs. k
plot(1:100, error_rates, type = "l", xlab = "k", ylab = "Test Error Rate", main = "Test Error Rate vs. k")
# Load the necessary library for k-NN
library(class)
# Assuming 'real_data' is already loaded and the outcome variable is 'y'
# Splitting the data into train and test sets
set.seed(123)  # For reproducibility
# Create a 75%/25% split (train: 945, test: 315)
train_indices <- sample(1:nrow(real_data), 0.75 * nrow(real_data))
train_data <- real_data[train_indices, ]
test_data <- real_data[-train_indices, ]
# Initialize a vector to store the error rates for each value of k
error_rates <- numeric(100)
# Loop through k values from 1 to 100 and calculate the error rates
for (k in 1:100) {
# Perform k-NN classification
knn_pred <- knn(train_data[, -ncol(real_data)], test_data[, -ncol(real_data)],
cl = train_data$y, k = k)  # Assuming 'y' is the outcome variable
# Calculate the error rate
error_rates[k] <- mean(knn_pred != test_data$y)
}
# Plot the error rate vs. k
plot(1:100, error_rates, type = "l", xlab = "k", ylab = "Test Error Rate", main = "Test Error Rate vs. k")
# Load the necessary library for k-NN
library(class)
# Assuming 'real_data' is already loaded and the outcome variable is 'DIFF'
# Splitting the data into train and test sets
set.seed(123)  # For reproducibility
# Create a 75%/25% split (train: 945, test: 315)
train_indices <- sample(1:nrow(real_data), 0.75 * nrow(real_data))
train_data <- real_data[train_indices, ]
test_data <- real_data[-train_indices, ]
# Initialize a vector to store the error rates for each value of k
error_rates <- numeric(100)
# Loop through k values from 1 to 100 and calculate the error rates
for (k in 1:100) {
# Perform k-NN classification
knn_pred <- knn(train_data[, -1], test_data[, -1],  # Exclude the target column
cl = train_data$DIFF,  # Assuming 'DIFF' is the outcome variable
k = k)
# Calculate the error rate
error_rates[k] <- mean(knn_pred != test_data$DIFF)  # Assuming 'DIFF' is the outcome variable
}
# Plot the error rate vs. k
plot(1:100, error_rates, type = "l", xlab = "k", ylab = "Test Error Rate", main = "Test Error Rate vs. k")
# Find the value of k with the minimum error rate
best_k <- which.min(error_rates)
cat("The best value for k is:", best_k, "with an error rate of:", error_rates[best_k], "\n")
# New random split
set.seed(456)
train_index_new <- sample(1:nrow(real_data), 0.75 * nrow(real_data))
train_data_new <- real_data[train_index_new, ]
test_data_new <- real_data[-train_index_new, ]
# Calculate the error rates again
error_rates_new <- numeric(100)
for (k in 1:100) {
knn_pred_new <- knn(train_data_new[, -ncol(real_data)], test_data_new[, -ncol(real_data)],
cl = train_data_new$y, k = k)
error_rates_new[k] <- mean(knn_pred_new != test_data_new$y)
}
# Plot the new error rate vs. k
lines(1:100, error_rates_new, col = "blue")
# Prepare the R script content
r_script = """
# Load the necessary library for k-NN
library(class)
# Assuming 'real_data' is already loaded and the outcome variable is 'DIFF'
# Splitting the data into train and test sets
set.seed(123)  # For reproducibility
# Create a 75%/25% split (train: 945, test: 315)
train_indices <- sample(1:nrow(real_data), 0.75 * nrow(real_data))
train_data <- real_data[train_indices, ]
test_data <- real_data[-train_indices, ]
# Initialize a vector to store the error rates for each value of k
error_rates <- numeric(100)
# Loop through k values from 1 to 100 and calculate the error rates
for (k in 1:100) {
# Perform k-NN classification
knn_pred <- knn(train_data[, -1], test_data[, -1],  # Exclude the target column
cl = train_data$DIFF,  # Assuming 'DIFF' is the outcome variable
k = k)
# Calculate the error rate
error_rates[k] <- mean(knn_pred != test_data$DIFF)  # Assuming 'DIFF' is the outcome variable
}
# Plot the error rate vs. k
plot(1:100, error_rates, type = "l", xlab = "k", ylab = "Test Error Rate", main = "Test Error Rate vs. k")
"""
# Save the script as a .R file
file_path = "/mnt/data/knn_classification.R"
with open(file_path, "w") as file:
file.write(r_script)
file_path  # Return the path to the saved file
# Prepare the R script content
r_script = """
# Load the necessary library for k-NN
library(class)
# Assuming 'real_data' is already loaded and the outcome variable is 'DIFF'
# Splitting the data into train and test sets
set.seed(123)  # For reproducibility
# Create a 75%/25% split (train: 945, test: 315)
train_indices <- sample(1:nrow(real_data), 0.75 * nrow(real_data))
train_data <- real_data[train_indices, ]
test_data <- real_data[-train_indices, ]
# Initialize a vector to store the error rates for each value of k
error_rates <- numeric(100)
# Loop through k values from 1 to 100 and calculate the error rates
for (k in 1:100) {
# Perform k-NN classification
knn_pred <- knn(train_data[, -1], test_data[, -1],  # Exclude the target column
cl = train_data$DIFF,  # Assuming 'DIFF' is the outcome variable
k = k)
# Calculate the error rate
error_rates[k] <- mean(knn_pred != test_data$DIFF)  # Assuming 'DIFF' is the outcome variable
}
# Plot the error rate vs. k
plot(1:100, error_rates, type = "l", xlab = "k", ylab = "Test Error Rate", main = "Test Error Rate vs. k")
"""
# Save the script as a .R file
file_path = "/mnt/data/knn_classification.R"
with open(file_path, "w") as file:
file.write(r_script)
file_path  # Return the path to the saved file
# Load the dataset into R
load("../Data/real_data.rda")  # Replace with the correct file path
real_data <- data
# Display the dimensions of the training data
dim(real_data)
# Display the first 6 records of the dataset
head(real_data)
# Set the random seed for reproducibility
set.seed(123)
# Split the data into training (75%) and test (25%)
train_index <- sample(1:nrow(real_data), size = 0.75 * nrow(real_data))
train_data <- real_data[train_index, ]
test_data <- real_data[-train_index, ]
# Check the dimensions of the training and test sets
dim(train_data)
dim(test_data)
library(class)
# Initialize a vector to store error rates
error_rates <- numeric(100)
# Compute error rates for k = 1 to 100
for (k in 1:100) {
# Apply KNN to the training data
predictions <- knn(train_data[, -ncol(train_data)], test_data[, -ncol(test_data)],
cl = train_data$difficulty, k = k)
# Calculate the error rate
error_rates[k] <- mean(predictions != test_data$difficulty)
}
# Plot the error rates as a function of k
plot(1:100, error_rates, type = "b", xlab = "Number of Neighbors (k)",
ylab = "Error Rate", main = "Error Rate vs. k")
# Find the value of k that minimizes the error rate
optimal_k <- which.min(error_rates)
cat("Optimal k value:", optimal_k, "\n")
# Assuming 'difficulty' is the last column in the data frame
# Make sure to select all feature columns, excluding the target variable
# Initialize a vector to store error rates
error_rates <- numeric(100)
# Compute error rates for k = 1 to 100
for (k in 1:100) {
# Apply KNN to the training data
predictions <- knn(train_data[, -which(names(train_data) == "difficulty")],
test_data[, -which(names(test_data) == "difficulty")],
cl = train_data$difficulty,
k = k)
# Calculate the error rate
error_rates[k] <- mean(predictions != test_data$difficulty)
}
# Plot the error rates as a function of k
plot(1:100, error_rates, type = "b", xlab = "Number of Neighbors (k)",
ylab = "Error Rate", main = "Error Rate vs. k")
# Find the value of k that minimizes the error rate
optimal_k <- which.min(error_rates)
cat("Optimal k value:", optimal_k, "\n")
# Check the dimensions of the training and target variable
cat("Train data dimensions:", dim(train_data), "\n")
cat("Target variable dimensions:", length(train_data$difficulty), "\n")
# Check for missing values in the train data and target variable
cat("Missing values in train_data:", sum(is.na(train_data)), "\n")
cat("Missing values in target variable:", sum(is.na(train_data$difficulty)), "\n")
# If there are missing values, you may need to handle them (e.g., imputation or removal)
# Remove rows with missing values (if necessary)
train_data <- na.omit(train_data)
# Now proceed with the KNN computation
error_rates <- numeric(100)
for (k in 1:100) {
# Apply KNN to the training data
predictions <- knn(train_data[, -which(names(train_data) == "difficulty")],
test_data[, -which(names(test_data) == "difficulty")],
cl = train_data$difficulty,
k = k)
# Calculate the error rate
error_rates[k] <- mean(predictions != test_data$difficulty)
}
# Plot the error rates as a function of k
plot(1:100, error_rates, type = "b", xlab = "Number of Neighbors (k)",
ylab = "Error Rate", main = "Error Rate vs. k")
# Find the value of k that minimizes the error rate
optimal_k <- which.min(error_rates)
cat("Optimal k value:", optimal_k, "\n")
# Séparer l'apprentissage-validation en deux parties : apprentissage et validation
set.seed(123)
train_index_sub <- sample(1:945, size = 630)
train_data_sub <- train_val_data[train_index_sub, ]
validation_data <- train_val_data[-train_index_sub, ]
# Calculer les taux d'erreur pour différents k sur l'ensemble de validation
error_rates_sub <- sapply(1:100, function(k) {
pred_sub <- knn(train = train_data_sub[, -ncol(train_data_sub)],
test = validation_data[, -ncol(validation_data)],
cl = train_data_sub$difficulty,
k = k)
mean(pred_sub != validation_data$difficulty)
})
# Trouver le k optimal qui minimise l'erreur
optimal_k_sub <- which.min(error_rates_sub)
cat("Le meilleur k basé sur l'apprentissage-validation est:", optimal_k_sub, "\n")
# Charger la bibliothèque 'class' pour knn
library(class)
# Calculer les taux d'erreur pour k variant de 1 à 100
error_rates <- sapply(1:100, function(k) {
pred <- knn(train = train_data[, -ncol(train_data)],
test = test_data[, -ncol(test_data)],
cl = train_data$difficulty,
k = k)
mean(pred != test_data$difficulty)
})
# Représenter le taux d'erreur en fonction de k
plot(1:100, error_rates, type = "b", xlab = "k", ylab = "Taux d'erreur", main = "Taux d'erreur pour différents k")
abline(h = min(error_rates), col = "red", lty = 2)
# Trouver k qui minimise le taux d'erreur
optimal_k <- which.min(error_rates)
cat("Le meilleur k est:", optimal_k, "\n")
# Display the first 6 records of the dataset
head(real_data)
# Display the dimensions of the training data
dim(real_data)
# Display the first 6 records of the dataset
head(real_data)
# Set the random seed for reproducibility
set.seed(123)
# Split the data into training (75%) and test (25%)
train_index <- sample(1:nrow(real_data), size = 0.75 * nrow(real_data))
train_data <- real_data[train_index, ]
test_data <- real_data[-train_index, ]
# Check the dimensions of the training and test sets
dim(train_data)
dim(test_data)
library(class)
# Initialize a vector to store error rates
error_rates <- numeric(100)
# Compute error rates for k = 1 to 100
for (k in 1:100) {
# Apply KNN to the training data
predictions <- knn(train_data[, -ncol(train_data)], test_data[, -ncol(test_data)],
cl = train_data$difficulty, k = k)
# Calculate the error rate
error_rates[k] <- mean(predictions != test_data$difficulty)
}
# Plot the error rates as a function of k
plot(1:100, error_rates, type = "b", xlab = "Number of Neighbors (k)",
ylab = "Error Rate", main = "Error Rate vs. k")
# Find the value of k that minimizes the error rate
optimal_k <- which.min(error_rates)
cat("Optimal k value:", optimal_k, "\n")
# Repeating the process with a different random split
set.seed(456)
train_index_2 <- sample(1:nrow(real_data), size = 0.75 * nrow(real_data))
train_data_2 <- real_data[train_index_2, ]
test_data_2 <- real_data[-train_index_2, ]
# Compute error rates again for the new split
error_rates_2 <- numeric(100)
for (k in 1:100) {
predictions_2 <- knn(train_data_2[, -ncol(train_data_2)], test_data_2[, -ncol(test_data_2)],
cl = train_data_2$difficulty, k = k)
error_rates_2[k] <- mean(predictions_2 != test_data_2$difficulty)
}
# Add the new error rates to the same plot
lines(1:100, error_rates_2, col = "red")
# Find the optimal k value for this new split
optimal_k_2 <- which.min(error_rates_2)
cat("Optimal k value for second split:", optimal_k_2, "\n")
cat("Train data dimensions:", dim(train_data_2), "\n")
cat("Target variable dimensions:", length(train_data_2$difficulty), "\n")
train_data_2 <- na.omit(train_data_2)
test_data_2 <- na.omit(test_data_2)
# Set a new random seed for reproducibility
set.seed(456)
# Split the dataset into training and testing sets
train_index_2 <- sample(1:nrow(real_data), size = 0.75 * nrow(real_data))
train_data_2 <- real_data[train_index_2, ]
test_data_2 <- real_data[-train_index_2, ]
# Verify that training and testing data have no missing values
cat("Missing values in train_data_2:", sum(is.na(train_data_2)), "\n")
cat("Missing values in test_data_2:", sum(is.na(test_data_2)), "\n")
# Remove rows with missing values (if necessary)
train_data_2 <- na.omit(train_data_2)
test_data_2 <- na.omit(test_data_2)
# Compute error rates for k = 1 to 100
error_rates_2 <- numeric(100)
for (k in 1:100) {
# Apply KNN to the training data
predictions_2 <- knn(
train_data_2[, -which(names(train_data_2) == "difficulty")],  # Feature columns
test_data_2[, -which(names(test_data_2) == "difficulty")],    # Feature columns
cl = train_data_2$difficulty,                                # Target variable
k = k                                                        # Number of neighbors
)
# Calculate the error rate
error_rates_2[k] <- mean(predictions_2 != test_data_2$difficulty)
}
# Plot the error rates for the first random split (if not already plotted)
plot(1:100, error_rates, type = "b", xlab = "Number of Neighbors (k)",
ylab = "Error Rate", main = "Error Rate vs. k", col = "blue")
# Add the error rates for the second split to the same plot
lines(1:100, error_rates_2, col = "red")
# Find the value of k that minimizes the error rate for the second split
optimal_k_2 <- which.min(error_rates_2)
cat("Optimal k value for second split:", optimal_k_2, "\n")
