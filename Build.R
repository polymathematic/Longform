#Start in default working directory
setwd("..")
devtools::document("Longform")
devtools::install("Longform")
setwd("Longform")
GitRDone::git_r_done()
