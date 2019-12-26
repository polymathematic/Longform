#' Knit a document to an HTML character string
#'
#' \code{knit_to_html()} creates properly formatted HTML and metadata from an R markdown file.
#'
#' @param input Path to the input R markdown file.
#' @param params Parameters to pass to rmarkdown::render().
#' @return Returns properly formatted HTML and metadata derived from an R Markdown file.
#' @export
#' @examples
#' TBD

knit_to_html <- function(input, params = list()){

  #Declare output
  output <- list()

  #Extract YAML
  input_meta <- rmarkdown::yaml_front_matter(input, encoding = "UTF-8")
  for(i in 1:length(input_meta)){
    output[names(input_meta)[i]] <- input_meta[[i]]
  }

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
                    params = params)
  output$html <- readr::read_file(paste0(temp_dir,"\\",temp_file))
  unlink(paste0(temp_dir,"\\",temp_file))

  #Timestamp
  output$generated_at <- Sys.time()

  #Return output
  return(output)

}

