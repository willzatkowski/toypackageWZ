test_that("theme_academic returns a valid ggplot2 theme object", {
  # Generate the theme
  my_theme <- theme_academic()

  # Check that it is actually a ggplot2 theme
  expect_true(ggplot2::is_theme(my_theme))
})

test_that("theme_academic applies custom element modifications correctly", {
  my_theme <- theme_academic(base_size = 14)

  # Check if the base_size successfully worked
  expect_equal(my_theme$text$size, 14)

  # Check the plot title modifications
  expect_equal(my_theme$plot.title$face, "bold")
  expect_equal(my_theme$plot.title$hjust, 0.5)

  # Check that the gridlines were successfully set to element_blank
  # element_blank() creates an object with the class "element_blank"
  expect_s3_class(my_theme$panel.grid.major, "element_blank")
  expect_s3_class(my_theme$panel.grid.minor, "element_blank")
})

test_that("theme_academic assertions catch invalid base_size inputs", {
  # Characters
  expect_error(theme_academic(base_size = "12"), "Assertion on 'base_size' failed")

  # Vectors (length > 1)
  expect_error(theme_academic(base_size = c(12, 14)), "Assertion on 'base_size' failed")

  # Negative numbers (caught by our lower = 0 boundary)
  expect_error(theme_academic(base_size = -5), "Assertion on 'base_size' failed")
})
