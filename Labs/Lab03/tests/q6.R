test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      name = "q6",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          length(vowel_vowel_fruit) == 32
        )
      }
    )
  )
)