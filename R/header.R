#' Header
#'
#' Create a header
#'
#' @param items TBD
#' @param bullet TBD
#' @param show TBD
#' @param html TBD
#' @export
#' @examples
#' TBD

CreateUnorderedList <- function(text, h = 1, show = TRUE, html = TRUE){

  if(!(h<=6 & h>=1)){
    stop("h must be between 1 and 6")
  }

  if(html){
    hlev <- sprintf("<h%i>", h)
    output <- paste0(hlev, trimws(text), hlev)
  } else {
    hlev <- Longform::implode(rep('*', h))
    output <- paste0(hlev, trimws(text), hlev)
  }

  #Class as unordered list
  class(output) <- "header"

  #Return output
  return(output)
}
