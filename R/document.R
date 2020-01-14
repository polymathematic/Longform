#' Compile items into a document (Deprecated)
#'
#' Form a properly formatted document from a list of paragraphs, images, and bullet-lists
#'
#' @param paragraphs A list of paragraph objects
#' @export

CreateDocument <- function(paragraphs){

  output <- Longform::implode(sprintf("%s", unlist(paragraphs)))

  #Class as document
  class(output) <- "document"

  #Return output
  return(output)

}
