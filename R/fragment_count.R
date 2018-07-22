#' Fragment: Count of values in a vector
#'
#' Return a statment summarising the number of items in a set
#'
#' @param x An integer vector greater than or equal to 0,
#' @param units A vector of length 2 indicating the singular and plural of x's units (e.g., c("country","countries")).
#' @param fallback The character string to return in case of error
#' @export
#' @examples
#' CreateCountFragment(c(1, 2), units = c('fish', 'fish'), fallback = "Red fish, blue fish")

#Format character vector as a delimited list
CreateCountFragment <- function(x = NULL, units, fallback = NA){

  #Return fallback if necessary
  if(is.null(x)){
    return(fallback)
  }

  #Return fallback if necessary
  if(any(is.na(x))){
    x <- na.omit(x)
  }

  #Check for negatives
  if(any(x<0)){
    stop("All values of x must be greater than 0")
  }

  #Define output
  output <- fallback

  output <- sapply(x, function(x){

    #what units are we using
    if(x == 1){
      units <- units[1]
    } else {
      units <- units[2]
    }

    #Compile
    x <- sprintf("%i %s", x, units)

    return(x)

  })

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
