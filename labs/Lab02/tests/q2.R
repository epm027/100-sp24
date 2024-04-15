test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          nrow(country_info_merged) == 1736
        )
        testthat::expect_true(
          ncol(country_info_merged) == 68
        )
        testthat::expect_true(
          "Continent" %in% names(country_info_merged)
        )
      }
    )
  )
)