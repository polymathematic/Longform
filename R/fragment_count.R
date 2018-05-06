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
#' x <- 10
#' example_items <- list("an increase", "a decrease", "no change")
#' example_bool <- list(x > 0, x < 0, x == 0)
#' fragment_conditional(example_items, example_bool)

#Format character vector as a delimited list
fragment_count<- function(x, units, fallback = NA, unique = FALSE){

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

  #If the list is empty return fallback string
  output <- sprintf("%i %s", n, units)

  #populate fallback if necessary
  if(is.na(output)){
    output <- fallback
  }

  #Return output
  return(output)
}
