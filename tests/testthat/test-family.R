# Tests for family specifications

test_that("scatr_family creates valid object", {
  fam <- scatr_family("poisson")
  expect_s3_class(fam, "scatr_family")
  expect_equal(fam$family, "poisson")
  expect_equal(fam$link, "log")
})

test_that("scatr_family uses correct default links", {
  expect_equal(scatr_family("poisson")$link, "log")
  expect_equal(scatr_family("binomial")$link, "logit")
  expect_equal(scatr_family("negbin")$link, "log")
})

test_that("scatr_family allows custom link", {
  fam <- scatr_family("binomial", link = "probit")
  expect_equal(fam$link, "probit")
})

test_that("scatr_family detects zero-inflation", {
  expect_false(scatr_family("poisson")$zero_inflated)
  expect_true(scatr_family("zi_poisson")$zero_inflated)
  expect_true(scatr_family("zi_negbin")$zero_inflated)
})
