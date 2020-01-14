#' Create a fragment based on a boolean condition
#'
#' Return a single character value from a pre-defined set based on a corresponding set of conditions
#'
#' @param items An unnamed list of character values in the desired order.
#' @param conditions A list of boolean values corresponding to each value in items. When more than one value is true, the first is returned.
#' @param fallback The character string to return when the list is empty or no conditions are met.
#' @export
#' @examples
#' x <- 10
#' example_items <- list("an increase", "a decrease", "no change")
#' example_bool <- list(x > 0, x < 0, x == 0)
#' fragment_conditional(example_items, example_bool)

#Format character vector as a delimited list
fragment_conditional <- function(items, conditions, fallback = NA){

  #How long is the list?
  i <- length(items)

  #If the list is empty return fallback string
  if(i == 0 | !any(unlist(conditions))){
    output <- fallback
  }

  #Return the first TRUE value
  output <- unlist(items[which(unlist(conditions))[1]])

  #Class as fragment
  class(output) <- "fragment"

  #Return output
  return(output)
}
