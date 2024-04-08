test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      name = "q7",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          sum(total_revenue$tot_rev) == 718.5
        )
      }
    )
  )
)