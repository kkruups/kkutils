library(httr)
#' Set noproxy localhost and environment to english
#'
#' This function sets localhost to noproxy and sys enviroment to english.
#' @param http_msg Want to see localhost http msgs? Defaults to FALSE [don't show msgs].
#' @keywords localhost_english
#' @export
#' @examples
#' setLclhostEng(http_msg = FALSE)
#' setLclhostEng(http_msg = TRUE)
#' setLclhostEng()

setLclhostEng <- function(http_msg = FALSE){
  Sys.setenv(LANG = "eng")

  if ( !http_msg ) {
    set_config(verbose(data_out = http_msg))
    cat("Http Messaging Off\n")

  }else{
    set_config(verbose())
    cat("Set Http Messaging On\n")
  }
   set_config(config(noproxy = "localhost"))
    cat("Set localhost to noproxy")
}
