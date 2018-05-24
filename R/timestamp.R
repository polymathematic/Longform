#' Timestamp
#'
#' A statement indicating the script completion time
#'
#' @param html TBD
#' @export
#' @examples
#' TBD
#'
CreateTimestamp <- function(html = TRUE){

  if(html){
    output <- sprintf("<p>Script complete at %s</p>", Sys.time())
  } else {
    output <- sprintf("/nScript complete at %s", Sys.time())
  }

  #Class as paragraph
  class(output) <- "timestamp"

  #Return output
  return(output)
}
