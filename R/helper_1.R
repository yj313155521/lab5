#' kolada_api
#'
#' kolada_api() is used for finding more information about certain city.
#'
#' @param path character
#' @return a character string
#' @example kolada_api("Lund")
#' @import httr
#' @import jsonlite
#' @export

kolada_api <- function(path){
  url <- paste0("https://api.kolada.se/v2/municipality?title=",path)
  resp <- httr::GET(url)
  data <- jsonlite::fromJSON(httr::content(resp,"text"),simplifyVector = FALSE)
  paste("INFORMATION\n","The ID of the city is",data[[2]][[1]][[1]],"\n","The type of the region is",data[[2]][[1]][[3]],sep =" ")
}
