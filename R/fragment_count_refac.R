#' Create a count fragment based on a count and singular/plural units
#'
#' @param x An integer value.
#' @param units A vector of length 2 indicating the singular and plural of x's units (e.g., c("country","countries")).
#' @param fallback The character string to return in case of error
#' @export
#' @examples
#' fragment_count(as.integer(c(1, 2, 3, NA)), units = c('letter', 'letters'), fallback = "an unknown number of")

#Format character vector as a delimited list
fragment_count <- function(x, units, fallback = 0){

  #Enforce Class
  x <- as.integer(x)

  #Check for class integer
  if(class(x) != "integer"){
    stop("x must be an integer")
  }

  #Define output
  output <- c()

  #what units are we using
  if(x != 1 | is.na(x)){
    unit <- units[2]
  } else {
    unit <- units[1]
  }

  #Compile
  if(!is.na(x)){
    output <- sprintf("%i %s", x, unit)
  } else {
    output <- sprintf("%s %s", fallback, unit) #populate fallback if necessary
  }

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
