# Check to see if n is equal to output length of FizzBuzz
test_that("n = output length", {
  expect_equal(length(FizzBuzz(10)), 10)
  expect_equal(length(FizzBuzz(15)), 15)
})

test_that("Error ouput correct", {
  expect_error(FizzBuzz(0))
  expect_error(FizzBuzz(-7))
  expect_error(FizzBuzz(Inf))
  expect_error(FizzBuzz("a"))
})
