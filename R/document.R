#' Document
#'
#' Form a properly formatted document from a list of paragraphs, images, and bullet-lists
#'
#' @param paragraphs TBD
#' @export
#' @examples
#' TBD
#'
CreateDocument <- function(paragraphs){

  output <- Longform::implode(sprintf("%s", unlist(paragraphs)))

  #Class as document
  class(output) <- "document"

  #Return output
  return(output)

}
