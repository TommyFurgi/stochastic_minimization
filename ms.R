library(smoof)

MS <- function(fun, num_points, dim) {
  min_values <- Inf
  total_MS_calls <- 0

  for (i in 1:num_points) {
    point <- runif(dim, getLowerBoxConstraints(fun), getUpperBoxConstraints(fun))
    result <- optim(par = point, fn = fun, method = "L-BFGS-B" , lower = getLowerBoxConstraints(fun), upper = getUpperBoxConstraints(fun))
    value <- result$value
    total_MS_calls <- total_MS_calls + result$counts[1]  

    min_values[i] <- value
  }
  return(list(min(min_values),total_MS_calls))
}
