test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      name = "q5",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          length(vowel_b_vowel_fruit) == 4
        )
      }
    )
  )
)