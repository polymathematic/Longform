#' Knit a document to an HTML character string
#'
#' \code{knit_to_html()} creates properly formatted HTML and metadata from an R markdown file.
#'
#' @param input Path to the input R markdown file.
#' @param params Parameters to pass to rmarkdown::render().
#' @return Returns properly formatted HTML derived from an R Markdown file.
#' @export
#' @examples
#' TBD

knit_to_html <- function(input, parameters = list()){

  #Declare output
  output_html <- character()

  #Format HTML
  temp_dir <- tempdir(check = TRUE)
  temp_file <- unlist(strsplit(tempfile(pattern = "temp",
                                        tmpdir = temp_dir,
                                        fileext = ".html"),
                               "[\\]"))
  temp_file <- temp_file[length(temp_file)]
  rmarkdown::render(input,
                    output_file = temp_file,
                    output_dir = temp_dir,
                    params = parameters)
  output_html <- readr::read_file(paste0(temp_dir,"\\",temp_file))
  unlink(paste0(temp_dir,"\\",temp_file))

  #Return output
  return(output_html)

}

