#' Upload a website
#'
#' It uses \code{\link[mcdev]{publishdir}} to retrieve the directory of the
#' website, then, from the website directory, it uses git commands to (i) stage
#' all new changes, (ii) commit these change (together with the input argument
#' message), and (iii) push upstream (which is uploading).
#'
#' The combination of `pkgdown::build_site` then `mcdev::upload_site` is
#' equivalent to `mcdev::buildsite` but we recommand to use the former option
#' instead.
#'
#' @param message character string containing the message of the git commit.
#'
#' @export
#'
#' @author Marc Choisy
upload_site <- function(message = "update") {
  system(paste("cd", publishdir(),
               "; git add -A",
               "; git commit -m \"", message, "\"",
               "; git push"))
  invisible(0)
}
