#!/usr/bin/env Rscript --vanilla

# Clear the environment
rm(list = ls())

library(testthat)

# Import all tasks
source('tasks/print_magic_string.R')
source('tasks/convert_to_functional.R')

# Run the tests
test_results <- test_dir("tests", reporter = "summary")
