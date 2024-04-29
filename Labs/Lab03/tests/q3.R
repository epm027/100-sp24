test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          length(ai_fruits) == 3
        )
      }
    )
  )
)