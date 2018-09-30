#' Add a header tag
#'
#' Create a header tag (H1 - H6)
#'
#' @param text The text value for the header
#' @param h The header level
#' @export

CreateHeader <- function(text, h = 1){

  if(!(h<=6 & h>=1)){
    stop("h must be between 1 and 6")
  }

  output <- paste0(sprintf("<h%i>", h),
                   trimws(text),
                   sprintf("</h%i>", h))

  #Class as header
  class(output) <- c("header", "paragraph")

  #Return output
  return(output)
}
