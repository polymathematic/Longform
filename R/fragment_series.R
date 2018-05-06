#' Fragment: Simple Series
#'
#' Format a list of character values as a simple series
#'
#' @param items An unnamed list of character values in the desired order
#' @param conj The conjunction to use: "and", "or", &c.
#' @param fallback The character string to return when the list is empty.
#' @export
#' @examples
#' example_items <- list("shoes", "ships", "sealing wax")
#' fragment_series(example_items)

#Format character vector as a delimited list
fragment_series <- function(items, conj = 'and', fallback = "nothing"){

  #How long is the list?
  i <- length(items)

  #If any of the items contain a comma, use a semicolon
  if(any(grepl(",", items))){
    delim = ";"
  } else {
    delim = ','
  }

  #If the list is empty return fallback string
  if(i == 0){
    output <- fallback
  }

  #If the list has 1 item...
  if(i == 1){
    output <- items[1]
  }

  #If the list has 2 items...
  if(i == 2){
    output <- paste(items, collapse = sprintf(" %s ", conj))
  }

  #If the list has more than 2 items...
  if(i > 2){
    items[i] <- sprintf("%s %s", conj, items[i])
    output <- paste(items, collapse = paste0(delim, ' '))
  }

  #Return output
  return(trimws(paste(output, collapse = ' ')))
}
