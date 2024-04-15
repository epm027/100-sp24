test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          nrow(data_2020) == 1736
        )
        testthat::expect_true(
          ncol(data_2020) == 4
        )
      }
    )
  )
)