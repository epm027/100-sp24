test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(og_milk_tea_ep[1,] == c(68, 
                                      "B03", 
                                      "Original Milk; Egg Pudding", 
                                      5.75) ) == 1
        )
        testthat::expect_true(
          sum(og_milk_tea_ep$DESCRIP 
              != "Original Milk; Egg Pudding") == 0
        )
      }
    )
  )
)