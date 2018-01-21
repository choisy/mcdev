#' Build and publish a website
#'
#' It uses \code{\link[blogdown]{build_site}} to build the site. It uses
#' \code{\link[mcdev]{publishdir}} to retrieve the directory of the website. And
#' it uses git commands to (i) move to the website directory, (ii) stage all new
#' changes, (iii) commit these change (together with the input argument) and (iv)
#' push upstream (which is publishing online).
#'
#' @param message character string containing the message of the git commit.
#'
#' @importFrom blogdown build_site
#'
#' @export
#'
#' @author Marc Choisy
buildsite <- function(message = "update") {
  build_site()
  system(paste("cd", publishdir(),
               "; git add -A",
               "; git commit -m \"", message, "\"",
               "; git push"))
  invisible(0)
}
