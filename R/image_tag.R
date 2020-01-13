#' Add an image tag
#'
#' Format an HTML image tag
#'
#' @param src TBD
#' @param alt TBD
#' @export

image_tag <- function(url, caption = NULL){

  #Create tag
  if(!is.null(caption)){
    output <- sprintf("![%s](%s)",
                      caption, url)
  } else {
    output <- sprintf("![](%s)", url)
  }

  #Class as image tag
  class(output) <- "image_tag"

  #Return output
  return(output)

}
