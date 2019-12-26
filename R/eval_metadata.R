#' Parse and evaluate metadata within an Rmarkdown document
#'
#' \code{eval_meta()} creates properly formatted HTML and metadata from an R markdown file. See \href{https://stackoverflow.com/questions/45646135/evaluating-r-code-in-yaml-header}{this thread} for why this is necessary.
#'
#' @param meta the metadata field value as return
#' @return Returns properly evauated metadata for the current Rmarkdown document
#' @export
#' @examples
#' eval_meta(rmarkdown::metadata$date)

eval_meta <- function(meta){
  temp_meta <- eval(parse(text = gsub("(^`r\\s+)|(`$)", "", meta)))
  return(temp_meta)
}
