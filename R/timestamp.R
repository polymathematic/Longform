#' Add a timestamp (Deprecated)
#'
#' A statement indicating the script completion time
#'
#' @export

CreateTimestamp <- function(timezone = "UTC"){

  #Validate timezone
  if(!(timezone %in% OlsonNames())){
    stop(sprintf("%s is not a valid timezone. See OlsonNames().", timezone))
  }

  #Create output
  output <- sprintf("<p>Script complete at %s (%s)</p>",
                    lubridate::with_tz(Sys.time(), tzone = timezone),
                    timezone)

  #Class as paragraph
  class(output) <- c("timestamp")

  #Return output
  return(output)
}
