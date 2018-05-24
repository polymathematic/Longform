#' Image
#'
#' Format an HTML image tag
#'
#' @param src TBD
#' @param alt TBD
#' @export
#' @examples
#' TBD

CreateImageTag <- function(url, alt = NULL, show = TRUE){

  #Create tag
  if(is.null(alt)){
    output <- sprintf("<img src=%s></img>", url)
  } else {
    output <- sprintf("<img src=%s alt=%s></img>", url, alt)
  }

  #Class as image
  class(output) <- "image"

  #Return output
  return(output)
}