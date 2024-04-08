test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      name = "q5",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(order_no_ppu[1,] == c(1, 5.75)) == 1
        )
        testthat::expect_true(
          prod(order_no_ppu[120,] == c(82, 5.75)) == 1
        )
      }
    )
  )
)