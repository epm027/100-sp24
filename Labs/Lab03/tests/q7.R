test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      name = "q7",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          length(two_word_fruits) == 11
        )
      }
    )
  )
)