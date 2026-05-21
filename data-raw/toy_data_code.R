## code to prepare `toy_data_code` dataset goes here
toy_data <- data.frame(
  subject_id = 1:5,
  reaction_time = c(1.2, 0.9, 1.5, 0.8, 1.1),
  test_score = c(45, 82, 55, 91, 67),
  recalled_words = c(
    "cat, dog, mouse",
    "apple, banana",
    "car, truck, bike, train",
    "red, blue, green",
    "sun, moon"
  )
)


usethis::use_data(toy_data, overwrite = TRUE)
