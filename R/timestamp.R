#' Timestamp
#'
#' A statement indicating the script completion time
#'
#' @export
#'
CreateTimestamp <- function(){

  output <- sprintf("<p>Script complete at %s</p>", Sys.time())

  #Class as paragraph
  class(output) <- "timestamp"

  #Return output
  return(output)
}
