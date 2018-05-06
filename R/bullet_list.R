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
    br <- "<br>"
  } else {
    br <- '\n'
  }
  output <- paste0(sprintf("%s %s", "\t-", unlist(items)), collapse = br)
  return(output)
}
