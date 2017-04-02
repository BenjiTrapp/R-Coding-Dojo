fib <- function(n){
  
  if (!is.numeric(n)) {stop("Invalid input")}
  if (n %% 1  != 0) {stop("Not an integer")}
  if (n < 0 ) {stop("You passed a negative number, moron")}
  if (n == 0) {return(0)}
  if (n == 1) {return(1)}
  
  return(fib(n-2) + fib(n-1))
}

fib2 <- function(n){
  
  if (!is.numeric(n)) {stop("Invalid input")}
  if (n %% 1  != 0) {stop("Not an integer")}
  if (n < 0) {return(0)}
  if (n < 2) {
    return(1)
  } else {
    generator <- function(f, ...){
      c(f[2], sum(f))
    }
    Reduce(generator, 2:n, c(0,1))[2]
  }
}

