#' Add a link tag
#'
#' Format an HTML image tag
#'
#' @param text The text of the link
#' @param url The URL the link points to
#' @export

link_tag <- function(text, url){

  #Create tag
  output <- sprintf("[%s](%s)",
                    text, url)

  #Class as image tag
  class(output) <- "link_tag"

  #Return output
  return(output)

}
