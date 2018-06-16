#' Paragraph
#'
#' Form a properly formatted paragraph from a list of sentences
#'
#' @param sentences TBD
#' @export
#' @examples
#' TBD
#'
CreateParagraph <- function(sentences){

  output <- sprintf("<p>%s</p>", Longform::implode(unlist(sentences), sep = " "))

  #Class as paragraph
  class(output) <- "paragraph"

  #Return output
  return(output)

}
