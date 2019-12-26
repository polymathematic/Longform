#' Add a header tag
#'
#' Create a header tag (H1 - H6)
#'
#' @param text The text value for the header
#' @param h The header level
#' @export

header_tag <- function(text, h = 1){

  #Check h
  if(!(h<=6 & h>=1)){
    stop("h must be between 1 and 6")
  }

  #Format tag
  output <- paste(Longform::implode(rep("#", h)), trimws(text))

  #Class as header
  class(output) <- c("header")

  #Return output
  return(output)
}
