test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        trueval <- pt((3.9 - 3.5) / (1.46 / sqrt(87)), 86)
        testthat::expect_true(
          abs(p_val_1 - trueval) <= 0.001
        )
      }
    )
  )
)