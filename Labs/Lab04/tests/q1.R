test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          t_quant_1 == qt(0.875, 48)
        )
      }
    )
  )
)