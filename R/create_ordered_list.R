#' Create an ordered list
#'
#' Generate markdown for a properly formatted numbered list from a vector of items
#'
#' @param items A list or vector of items (in desired order)
#' @export
#' @examples
#' ordered_list(items = list("DC Brau", "Helllbender", "Three Star", "Right Proper", "Blue Jacket", "Public Option"))

ordered_list <- function(items){

  output <- Longform::implode(sprintf("%i. %s\n", 1:length(items), unlist(items)))

  #Class as ordered list
  class(output) <- c("ordered_list")

  #Return output
  return(output)

}
