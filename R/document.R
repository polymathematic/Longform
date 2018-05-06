#' Document
#'
#' Form a properly formatted document from a list of paragraphs and bullet-lists
#'
#' @param sentences TBD
#' @param show TBD
#' @param html TBD
#' @param timestamp TBD
#' @export
#' @examples
#' TBD
#'
paragraph <- function(paragraphs, show = TRUE, html = FALSE, timestamp = TRUE){

  if(html){
    output <- Longform::implode(paste0("<p>",unlist(paragraphs),"</p>"))
  } else {
    output <- Longform::implode(unlist(paragraphs), sep = '\n\n')
  }

  return(output)
}
