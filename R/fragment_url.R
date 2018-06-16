#' URL Fragment
#'
#' Format an url tag
#'
#' @param href TBD
#' @param text TBD
#' @export
#' @examples
#' CreateURLTag("www.google.com", "Let me google that for you...")

CreateURLTag <- function(href, text = "Link"){

  #Create tag
  output <- sprintf("<a href='%s'>%s</a>", href, text)

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
