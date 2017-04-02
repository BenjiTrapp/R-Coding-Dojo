library(testthat)

test_that('It returns Hello World', {
  # given
  expected <- 'Hello World'
  magic_list <- c('72','101','108','108','111','32','87','111','114','108','100')
  # when
  result <- print_magic_string(magic_list)
  # then
  expect_that(result, matches(expected))
})
