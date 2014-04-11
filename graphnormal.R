graphnormal <- function(X) {
  n <- length(X)
  plot((1:n-1)/(n-1), sort(X),
       type = "l",
       main = "Quantile graph",
       xlab = "sample Fraction",
       ylab = "sample Quantile")
}