test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(orders_joined[1,] == c(1, 
                                      "T02", 
                                      "Taro; Lychee", 
                                      5.75) ) == 1
        )
        testthat::expect_true(
          prod(orders_joined[120,] == c(82, 
                                      "B02", 
                                      "Original Milk; Lychee", 
                                      5.75) ) == 1
        )
      }
    )
  )
)