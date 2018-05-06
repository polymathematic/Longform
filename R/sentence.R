#' Sentence
#'
#' Form a properly formatted sentence from a list of fragments
#'
#' @param fragments TBD
#' @param show TBD
#' @param punct TBD
#' @export
#' @examples
#' TBD

sentence <- function(fragments = list("this is the first", "and this is the second"), show = TRUE, punct = "."){
  output <- paste0(Longform::implode(unlist(fragments), sep = " "), punct)
  output <- paste0(toupper(substr(output,1,1)), substr(output,2,nchar(output)))
  return(output)
}
