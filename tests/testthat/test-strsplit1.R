test_that("strsplit1 splits strings correctly", {
  # Standard comma split
  expect_equal(strsplit1("alpha, bravo, charlie", split = ", "), c("alpha", "bravo", "charlie"))

  # Split by empty string (returns individual characters)
  expect_equal(strsplit1("data", split = ""), c("d", "a", "t", "a"))

  # Split character doesn't exist in string (returns original string)
  expect_equal(strsplit1("alpha", split = ","), "alpha")
})

test_that("strsplit1 assertions catch invalid 'x' inputs", {
  # x is not a character
  expect_error(strsplit1(12345, split = ","), "Assertion on 'x' failed")

  # x is a character vector of length > 1
  expect_error(strsplit1(c("alpha", "bravo"), split = ","), "Assertion on 'x' failed")

  # x is missing (NA)
  expect_error(strsplit1(NA_character_, split = ","), "Assertion on 'x' failed")
})

test_that("strsplit1 assertions catch invalid 'split' inputs", {
  # split is not a character
  expect_error(strsplit1("alpha, bravo", split = 1), "Assertion on 'split' failed")

  # split is a character vector of length > 1
  expect_error(strsplit1("alpha, bravo", split = c(",", " ")), "Assertion on 'split' failed")
})
