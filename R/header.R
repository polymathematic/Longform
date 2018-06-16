#' Header
#'
#' Create a header
#'
#' @param text TBD
#' @param h TBD
#' @param show TBD
#' @param html TBD
#' @export
#' @examples
#' TBD

CreateHeader <- function(text, h = 1, show = TRUE, html = TRUE){

  if(!(h<=6 & h>=1)){
    stop("h must be between 1 and 6")
  }

  if(html){
    output <- paste0(sprintf("<h%i>", h),
                     trimws(text),
                     sprintf("</h%i>", h))
  } else {
    hlev <- Longform::implode(rep('*', h))
    output <- paste0(hlev, trimws(text), hlev)
  }

  #Class as unordered list
  class(output) <- "header"

  #Return output
  return(output)
}
