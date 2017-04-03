
gcd <- function(x,y) {
  r <- x %% y;
  return(ifelse(r, gcd(y, r), y))
}

is_prime <- function(num) {
  if (num == 2) {
    TRUE
  } else if (any(num %% 2:(num - 1) == 0)) {
    FALSE
  } else {
    TRUE
  }
}

rho <- function(N, a) {
  x <- ceiling(runif(N, max = N))
  y <- x
  p <- 1

  while (p == 1) {
    x <- (x^2 + a) %% N
    y <- (y^2 + a) %% N
    y <- (y^2 + a) %% N
    d <- (y - x) %% N
    p <- gcd(d, N)
  }

  return(unique(p))
}
