test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      name = "q6",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(num_each_sold[3,] == c("Jasmine Milk; Lychee", 
                                      13)) == 1
        )
        testthat::expect_true(
          prod(num_each_sold[12,] == c("Taro; No Topping",
                                       6)) == 1
        )
      }
    )
  )
)