#' Add an image tag
#'
#' Format an HTML image tag
#'
#' @param src TBD
#' @param alt TBD
#' @export

CreateImageTag <- function(url, alt = NULL){

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
