library(testthat)

context("### Odd digits - basic tests ###")

test_that('It returns 1,3,5', {
  # given
  n <- 5
  expected <- c(1, 3, 5)
  # when
  odds_imp <- odds_imperative(n)
  odds_func <- odds_functional(n)
  # then
  expect_equal(odds_imp, expected)
  expect_equal(odds_func, expected)
})

context('### Odd digits - Boundary checks###')

test_that('It returns an empty list when n == 0', {
  # given
  n <- 0
  expected <- c()
  # when
  odds_imp <- odds_imperative(n)
  odds_func <- odds_functional(n)
  # then
  expect_equal(odds_imp, expected)
  expect_equal(odds_func, expected)
})

test_that('It returns an empty list when n < 0', {
  # given
  n <- -10
  expected <- c()
  # when
  odds_imp <- odds_imperative(n)
  odds_func <- odds_functional(n)
  # then
  expect_equal(odds_imp, expected)
  expect_equal(odds_func, expected)
})

context("### Fibonacci - Basic tests ###")

test_that('It returns 0,1,1,2,3,5,8,13', {
  # given
  n_fibs <- 8
  expected <- c(0, 1, 1, 2, 3, 5, 8, 13)
  # when
  fibs_imp <- fibonacci_imperative(n_fibs)
  fibs_func <- fibonacci_functional(n_fibs)
  # then
  expect_equal(fibs_imp, expected)
  expect_equal(fibs_func, expected)
})

context('### Fibonacci - Boundary checks###')

test_that('It returns an empty list when n == 0', {
  # given
  n_fibs <- 0
  expected <- c()
  # when
  fibs_imp <- fibonacci_imperative(n_fibs)
  fibs_func <- fibonacci_functional(n_fibs)
  # then
  expect_equal(fibs_imp, expected)
  expect_equal(fibs_func, expected)
})

test_that('It returns an empty list when n < 0', {
  # given
  n_fibs <- -10
  expected <- c()
  # when
  fibs_imp <- fibonacci_imperative(n_fibs)
  fibs_func <- fibonacci_functional(n_fibs)
  # then
  expect_equal(fibs_imp, expected)
  expect_equal(fibs_func, expected)
})

context('### Fibonacci - Exceptions handling ###')

test_that('It returns an error when a double is passed instead of an integer', {
  # given
  n <- 42.5

  # when double instead of an integer is passed -> then an error is assumed to appear
  expect_error(fibonacci_imperative(n), "Fail -> Double instead of an integer")
  expect_error(fibonacci_functional(n), "Fail -> Double instead of an integer")
})

test_that('It should ignore real big digits', {
  # given
  n <- 10000000 # 10 Million

  # when a real big integer is passed -> then an error is assumed to appear
  expect_error(fibonacci_imperative(n), "Fail -> To big integer passed")
  expect_error(fibonacci_functional(n), "Fail -> To big integer passed")
})

context('### Fibonacci - Speed of execution ###')

test_that('It should execute fast',{
  # given
  big_boundary <- 10
  n <- 30

  expect_that(system.time(fibonacci_imperative(n))[3] < big_boundary, is_true())
  # vs
  expect_that(system.time(fibonacci_functional(n))[3] < big_boundary, is_true())
})

test_that('It should execute faster',{
  # given
  smaller_boundary <- 2
  n <- 100

  expect_that(system.time(fibonacci_imperative(n))[3] < smaller_boundary, is_true())
  # vs
  expect_that(system.time(fibonacci_functional(n))[3] < smaller_boundary, is_true())
})

