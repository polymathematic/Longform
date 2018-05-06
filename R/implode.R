#' Implode a list of strings
#'
#' Form a single string from a vector of strings
#' @export

implode <- function(..., sep='') {
  paste0(..., collapse=sep)
}
