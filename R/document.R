#' Document
#'
#' Form a properly formatted document from a list of paragraphs, images, and bullet-lists
#'
#' @param sentences TBD
#' @param show TBD
#' @param html TBD
#' @param timestamp TBD
#' @export
#' @examples
#' TBD
#'
CreateDocument <- function(paragraphs, show = TRUE, html = TRUE, timestamp = TRUE){

  if(html){
    output <- Longform::implode(sprintf("%s", unlist(paragraphs)))
  } else {
    output <- Longform::implode(unlist(paragraphs), sep = '\n\n')
  }

  #Class as document
  class(output) <- "document"

  #Return output
  return(output)
}
