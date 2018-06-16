#' Fragment: Count of values in a vector
#'
#' Return a statment summarising the number of items in a set
#'
#' @param x A vector of any class.
#' @param units A vector of length 2 indicating the singular and plural of x's units (e.g., c("country","countries")).
#' @param fallback The character string to return in case of error
#' @param unique Should only unique values be counted?
#' @export
#' @examples
#' CreateCountFragment(c('A','A','B','B','C','C','C'), units = c('letter', 'letters'), unique = TRUE)

#Format character vector as a delimited list
CreateCountFragment <- function(x, units, fallback = NA, unique = FALSE){

  #Define output
  output <- NA

  #How many values?
  if(unique){
    n <- length(unique(x))
  } else {
    n <- length(x)
  }

  #what units are we using
  if(n == 1){
    units <- units[1]
  } else {
    units <- units[2]
  }

  #Compile
  if(n > 0){
    output <- sprintf("%i %s", n, units)
  } else {
    output <- fallback #populate fallback if necessary
  }

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
