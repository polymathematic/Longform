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
CreateParagraph <- function(sentences, show = TRUE, html = TRUE){

  if(html){
    output <- sprintf("<p>%s</p>", Longform::implode(unlist(sentences), sep = " "))
  } else {
    br <- '\n'
    output <- Longform::implode(unlist(sentences), sep = " ")
  }

  #Class as paragraph
  class(output) <- "paragraph"

  #Return output
  return(output)
}
