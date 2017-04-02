# Aufgabe:
# Wandle die folgenden imperativen Codezeilen in äquivalente funktionale
# Konstrukte um.
# Benutze dabei die xapply Familie.

odds_imperative <- function(n) {
  if (n <= 0) {
    return(c())
  }
  odds <- c()

  for (i in seq(1, n)) {
    if (i %% 2 != 0) {
      odds <- append(odds, i)
    }
  }

  return(odds)
}

odds_functional <- function(n) {

}

# Fibonacci Folge.
# 1. Fibonacci Zahl ist 0
# 2. Fibonacci Zahl ist 1
# n.te Fibonacci Zahl ist fib[n-1] + fib[n-2]
fibonacci_imperative <- function(n) {
  if (n <= 0) {
    return(c())
  }
  fib <- c(0, 1)

  while (length(fib) < n) {
    fib <- append(fib, sum(tail(fib, n = 2)))
  }

  return(fib)
}


# @param n The number of fibonacci  numbers to return
fibonacci_functional <- function(n) {

}
