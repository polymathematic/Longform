#' Compile fragments into a sentence (Deprecated)
#'
#' Form a properly formatted sentence from a list of fragments
#'
#' @param fragments A list of fragments to be compiled into a sentence.
#' @param punct The punctuation used at the end of the sentence.
#' @export
#' @examples
#' CreateSentence(list("one more question:", "how do you feel"), punct = '?')

CreateSentence <- function(fragments = list("this is the first", "and this is the second"), punct = "."){

  output <- paste0(Longform::implode(unlist(fragments), sep = " "), punct)
  output <- paste0(toupper(substr(output,1,1)), substr(output,2,nchar(output)))

  #Class as sentence
  class(output) <- "sentence"

  #Return output
  return(output)
}
