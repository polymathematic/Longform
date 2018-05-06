#' Paragraph
#'
#' Form a properly formatted paragraph from a list of sentences
#'
#' @param sentences TBD
#' @param show TBD
#' @export
#' @examples
#' TBD
#'
paragraph <- function(sentences, show = TRUE){
  output <- paste(unlist(sentences), collapse = " ")
  return(output)
}
