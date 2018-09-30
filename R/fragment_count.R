#' Create a fragment based on the count of values in a vector
#'
#' Return a statment summarising the number of items in a set
#'
#' @param x A vector of integer values.
#' @param units A vector of length 2 indicating the singular and plural of x's units (e.g., c("country","countries")).
#' @param fallback The character string to return in case of error
#' @export
#' @examples
#' CreateCountFragment(as.integer(c(1, 2, 3, NA)), units = c('letter', 'letters'), fallback = "an unknown number of")

#Format character vector as a delimited list
CreateCountFragment <- function(x, units, fallback){

  #Check for class integer
  if(class(x) != "integer"){
    stop("x must be an integer")
  }

  #Define output
  output <- c()

  #Loop over x
  for(i in 1:length(x)){

    #Extract value
    val <- x[i]

    #what units are we using
    if(val != 1 | is.na(val)){
      unit <- units[2]
    } else {
      unit <- units[1]
    }

    #Compile
    if(!is.na(val)){
      output[i] <- sprintf("%i %s", val, unit)
    } else {
      output[i] <- sprintf("%s %s", fallback, unit) #populate fallback if necessary
    }
  }

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
