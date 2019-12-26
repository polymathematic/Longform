#' Knit a document to HTML
#'
#' \code{knit_to_html()} creates properly formatted HTML and metadata from an R markdown file.
#'
#' @param input Path to the input R markdown file.
#' @return Returns properly formatted HTML and metadata derived from an R Markdown file.
#' @export
#' @examples
#' TBD

knit_to_html <- function(input){

  #Declare output
  output <- list()

  #Extract YAML
  input_meta <- rmarkdown::yaml_front_matter(input, encoding = "UTF-8")
  for(i in 1:length(input_meta)){
    output[names(input_meta)[i]] <- input_meta[[i]]
  }

  #Format HTML
  output$html <- markdown::markdownToHTML(input, fragment.only = TRUE)

  #Timestamp
  output$generated_at <- Sys.time()

  #Return output
  return(output)

}
