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

bullet_list <- function(items, bullet = "\t-", show = TRUE, html = FALSE){
  if(html){
    output <- Longform::implode("<ul>", sprintf("%s%s%s", "<li>", unlist(items), "</li>"), "</ul>")
  } else {
    br <- '\n'
    output <- Longform::implode(sprintf(paste0(bullet ," %s"), unlist(items)), "\n")
  }

  return(output)
}
