test_that("we can get the right values from the API", {
  expect_equal(kolada_api("Lund"), "INFORMATION\n The ID of the city is 1281 \n The type of the region is K")
})


test_that("wrong Input can cause errors", {
  expect_error(kolada_api(Lund))
})
