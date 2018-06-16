#' Header
#'
#' Create a header
#'
#' @param text TBD
#' @param h TBD
#' @export
#' @examples
#' TBD

CreateHeader <- function(text, h = 1){

  if(!(h<=6 & h>=1)){
    stop("h must be between 1 and 6")
  }

  output <- paste0(sprintf("<h%i>", h),
                   trimws(text),
                   sprintf("</h%i>", h))

  #Class as header
  class(output) <- "header"

  #Return output
  return(output)
}
