#' Create a count fragment based on an integer value and singular/plural units
#'
#' @param x An integer value.
#' @param units A vector of length 2 indicating the singular and plural of x's units (e.g., c("country","countries")).
#' @param fallback The character string to return in case of error
#' @param spellout Should the integer be expressed as a word (e.g., 17 becomes "seventeen")
#' @param comma Should the integer include a thousands in the
#' @param thousands_mark The character used to separate orders of a thousand
#' @param decimal_mark The character used as the decimal
#' @export
#' @examples
#' fragment_count(as.integer(c(1, 2, 3, NA)), units = c('letter', 'letters'), fallback = "an unknown number of")

#Format character vector as a delimited list
fragment_count <- function(x, units, fallback = 0, spellout = FALSE, comma = !spellout, thousands_mark = ",", decimal_mark = "."){

  #Define output
  output <- c()

  #what units are we using
  if(x != 1 | is.na(x)){
    unit <- units[2]
  } else {
    unit <- units[1]
  }

  #Check for spellout
  if(spellout){
    x <- english::as.english(x)
    fallback <- english::as.english(fallback)
  }

  #Check for commas
  if(comma && !spellout){
    x <- scales::comma(x, big.mark = thousands_mark, decimal.mark = decimal_mark)
    fallback <- scales::comma(fallback, big.mark = thousands_mark, decimal.mark = decimal_mark)
  }

  #Compile
  if(!is.na(x)){
    output <- sprintf("%s %s", x, unit)
  } else {
    output <- sprintf("%s %s", fallback, unit) #populate fallback if necessary
  }

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
