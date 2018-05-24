#' URL Fragment
#'
#' Format an url tag
#'
#' @param href TBD
#' @param text TBD
#' @export
#' @examples
#' TBD

CreateURLTag <- function(href, text = "Link", show = TRUE){

  #Create tag
  output <- sprintf("<a href='%s'>%s</a>", href, text)

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
