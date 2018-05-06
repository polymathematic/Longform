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
    br <- "<br><br>"
  } else {
    br <- '\n\n'
  }

  output <- paste(c(tab, unlist(paragraphs)), collapse = " ")
  return(output)
}
