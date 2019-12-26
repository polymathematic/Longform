#' Create an unordered list
#'
#' Generate markdown for a properly formatted bullet list from a vector of items
#'
#' @param items A list or vector of items (in desired order)
#' @export
#' @examples
#' unordered_list(items = list("DC Brau", "Helllbender", "Three Star", "Right Proper", "Blue Jacket", "Public Option"))

unordered_list <- function(items){

  output <- Longform::implode(sprintf("* %s\n", unlist(items)))

  #Class as unordered list
  class(output) <- c("unordered_list")

  #Return output
  return(output)

}
