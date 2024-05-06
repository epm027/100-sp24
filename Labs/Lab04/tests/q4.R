test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        sx2 <- 4.3
        sy2 <- 3.2
        n1 <- 50
        n2 <- 60
        test_stat <- (5.5 - 5.2) / sqrt((sx2 / n1) + (sy2 / n2))
        trueval <- 2*pt(abs(test_stat), df = df1, lower.tail = F)
        testthat::expect_true(
          abs(pval2 - trueval) < 0.01
        )
      }
    )
  )
)