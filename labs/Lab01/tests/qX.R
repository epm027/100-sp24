test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(units_sold == c(15, 12,  10,  
                               8, 10, 14, 
                               13, 7, 6,  
                               7, 12, 6 )) == 1
        )
      }
    )
  )
)