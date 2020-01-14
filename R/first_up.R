#' Capitalize the first letter in a string
#'
#' @param x A piece of text
#' @export
#'

first_up <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  return(x)
}
