#' Add emphasis
#'
#' Bold or italicize text to add emphasis to a string
#'
#' @param text The text string to be emphasized
#' @param type The type of emphasis ("bold" or "italic")
#' @export

emphasis <- function(text, type = "bold"){

  #Determine notation
  if(type == "bold"){
    char <- "*"
    char_count <- 2
  } else if(type == "italic"){
    char <- "*"
    char_count <- 1
  } else {
    stop("'type' not found")
  }

  #Format tag
  output <- paste0(Longform::implode(rep(char, char_count)),
                  trimws(text),
                  Longform::implode(rep(char, char_count)))

  #Class as header
  class(output) <- c("emphasis")

  #Return output
  return(output)
}
