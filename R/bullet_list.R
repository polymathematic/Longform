#' Bullet List
#'
#' Form a properly formatted bullet list from a list of items
#'
#' @param items TBD
#' @param bullet TBD
#' @param show TBD
#' @param html TBD
#' @export
#' @examples
#' TBD

CreateUnorderedList <- function(items, show = TRUE, html = TRUE){

  if(html){
    output <- Longform::implode("<ul>", sprintf("<li>%s</li>", unlist(items)), "</ul>")
  } else {
    br <- '\n'
    output <- Longform::implode(sprintf(paste0("\t-" ," %s"), unlist(items)), "\n")
  }

  #Class as unordered list
  class(output) <- "unordered_list"

  #Return output
  return(output)
}
