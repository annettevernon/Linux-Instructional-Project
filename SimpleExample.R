library(parallel)

# Define a vector of numbers
numbers <- 1:10

# Create a cluster for parallel processing
cl <- makeCluster(detectCores())

# Export the necessary variables to the cluster
clusterExport(cl, c("numbers"))

# Define a function to square a number
square_number <- function(x) {
  return(x^2)
}

# Use parallel processing to square the numbers
result <- parLapply(cl, numbers, square_number)

# Stop the cluster
stopCluster(cl)

# Print the result
print(result)