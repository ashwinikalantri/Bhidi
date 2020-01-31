library(dplyr)
library(jsonlite)
library(httr)
setwd("/Volumes/GoogleDrive/Shared drives/HDSS/HDSS Data")
reject <- read_csv("rejectmapm.csv")

id <- reject$id

comment <- reject$comment
user <- "api"
password <- "Snsph@2018"
# function archive one assignment
hqreject <- function(id, comment){
  # url encode comment
  encoded_comment <- utils::URLencode(comment, reserved=TRUE)
  # build api endpoint
  endpoint <- paste0("https://mgims.mysurvey.solutions/api/v1/interviews/", 
                     id, "/reject?", encoded_comment)
  resp <- httr::PATCH(endpoint, authenticate(user, password))
  if (httr::status_code(resp)==200){
    message("Successfully approved interview: ", id)
  } else if (httr::status_code(resp)==401){
    message("Invalid login or password.")
  } else if (httr::status_code(resp)==406){
    message("Could not HQ approve interview, ", id, " due to its current status.")
  } else {
    message("Error approving interview: ", id)
    print(httr::status_code(resp))
  }
}
# loop through each interview
for (i in 1:length(id)){
  hqreject(id[i], comment[i])
}
# another way to loop using mapply
# mapply(hqreject, ids, comments)