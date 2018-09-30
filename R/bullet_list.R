#' Create an unordered list
#'
#' Form a properly formatted bullet list from a vector of items
#'
#' @param items A list or vector of items (in desired order)
#' @export
#' @examples
#' CreateUnorderedList(items = list("DC Brau", "Helllbender", "Three Star", "Right Proper", "Blue Jacket", "Public Option"))

CreateUnorderedList <- function(items){

  output <- paste0("<ul>",
                   Longform::implode(sprintf("<li>%s</li>", unlist(items))),
                   "</ul>")

  #Class as unordered list
  class(output) <- c("unordered_list", "paragraph")

  #Return output
  return(output)
}
