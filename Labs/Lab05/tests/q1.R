test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        y <- c(1, 1, 2, 3, 3, 4, 5, 6, 7, 8)
        x1 <- c(1, 2, 1, 4, 5, 7, 6, 7, 9, 10)
        x2 <- c(1, 1, 1, 2, 3, 3, 4, 3, 1, 2)
        testthat::expect_true(
          prod(dim(X) == c(10, 3)) == 1
        )
        testthat::expect_true(
          prod(X[,2] == x1) == 1
        )
        testthat::expect_true(
          unique(X[,1]) == 1
        )
      }
    )
  )
)