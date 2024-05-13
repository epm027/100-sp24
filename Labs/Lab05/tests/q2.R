test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(ols_hand) == c(3, 1)) == 1
        )
      }
    )
  )
)