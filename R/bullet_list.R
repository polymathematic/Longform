#' Bullet List
#'
#' Form a properly formatted bullet list from a list of items
#'
#' @param items TBD
#' @param bullet TBD
#' @export
#' @examples
#' TBD

CreateUnorderedList <- function(items){

  output <- paste0("<ul>",
                   Longform::implode(sprintf("<li>%s</li>", unlist(items))),
                   "</ul>")

  #Class as unordered list
  class(output) <- "unordered_list"

  #Return output
  return(output)
}
