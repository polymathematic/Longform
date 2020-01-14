#' Compile sentences into a paragraph (Deprecated)
#'
#' Form a properly formatted paragraph from a list of sentences
#'
#' @param sentences A list of sentences to be compiled into a paragraph.
#' @export

CreateParagraph <- function(sentences){

  output <- sprintf("<p>%s</p>", Longform::implode(unlist(sentences), sep = " "))

  #Class as paragraph
  class(output) <- "paragraph"

  #Return output
  return(output)

}
