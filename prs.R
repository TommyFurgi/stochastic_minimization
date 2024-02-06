library(smoof)

PRS <- function(fun, num_of_points, dim){
  min_value <- Inf
  for(x in 1:num_of_points){
    point <- runif(dim, getLowerBoxConstraints(fun), getUpperBoxConstraints(fun))
    value <- fun(point)

    if(value < min_value){
      min_value <- value
    }
  }
  return(min_value)
}