test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          nrow(country_info) == 1736
        )
        testthat::expect_true(
          ncol(country_info) == 67
        )
      }
    )
  )
)