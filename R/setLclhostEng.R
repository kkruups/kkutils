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

  if (!requireNamespace("httr", quietly = FALSE)) {
    stop("Pkg \"httr\" needed for this function to work. Please install it.",
         call. = TRUE)
  }

  if ( !http_msg ) {
    httr::set_config(httr::verbose(data_out = http_msg))
    cat("Http Messaging Off\n")

  }else{
    httr::set_config(httr::verbose())
    cat("Set Http Messaging On\n")
  }
  httr::set_config(httr::config(noproxy = "localhost"))
    cat("Set localhost to noproxy")
}
