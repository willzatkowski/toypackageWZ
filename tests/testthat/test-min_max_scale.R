test_that("min_max_scale scales standard numeric vectors correctly", {
  # Simple sequence
  expect_equal(min_max_scale(c(1, 2, 3, 4, 5)), c(0, 0.25, 0.5, 0.75, 1))

  # Negative to positive range
  expect_equal(min_max_scale(c(-10, 0, 10)), c(0, 0.5, 1))

  # Decimals
  expect_equal(min_max_scale(c(0.5, 1.0, 1.5)), c(0, 0.5, 1))
})

test_that("min_max_scale handles missing values properly", {
  # Because na.rm = TRUE is hardcoded, NA should remain NA, but the rest scales
  expect_equal(min_max_scale(c(1, NA, 5)), c(0, NA, 1))
})

test_that("min_max_scale handles mathematical edge cases", {
  # If all numbers are the same, max - min = 0. Division by zero yields NaN.
  # We test that the function returns NaN for all elements.
  expect_true(all(is.nan(min_max_scale(c(5, 5, 5)))))
})

test_that("min_max_scale assertions catch invalid inputs", {
  # Character vector
  expect_error(min_max_scale(c("a", "b", "c")), "Assertion on 'x' failed")

  # Factor
  expect_error(min_max_scale(factor(c(1, 2, 3))), "Assertion on 'x' failed")

  # List
  expect_error(min_max_scale(list(1, 2, 3)), "Assertion on 'x' failed")
})
