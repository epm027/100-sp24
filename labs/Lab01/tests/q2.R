test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(orders) == c(120, 2)) == 1
        )
        testthat::expect_true(
          prod(dim(inventory) == c(12, 3)) == 1
        )
        testthat::expect_true(
          prod(orders[1, ] == c(1, "T02")) == 1
        )
        testthat::expect_true(
          prod(inventory[1, ] == c("T00", 
                                   "Taro; No Topping", 
                                   5.25)) == 1
        )
      }
    )
  )
)