#' Download a package file from an URL
#'
#' In case a raw data file is too big to be contained in a package, a solution
#' consists in downloading that file after package installation when the file is
#' needed for the first time. This is what the download function allows to do.
#' It will downlaod the file from the provided URL and put it in the extdata
#' directory of the provided package hierarchy, naming it using the name
#' provided as an argument.
#'
#' @param url character string containing the URL to download from.
#'
#' @param package character string containing the name of the package into which
#'                to put the downloaded file.
#'
#' @param file character string containing the name of the downloaded file
#'             should be given.
#'
#' @param ... options passed to utils::download.file().
#'
#' @importFrom utils download.file
#'
#' @export
#'
#' @author Marc Choisy
#'
download <- function(url, package, file, ...) {
  path <- find.package(package)
  destdir <- paste0(path, "/extdata")
  if (!dir.exists(destdir)) dir.create(destdir)
  utils::download.file(url, paste0(destdir, "/", file, ...))
  invisible(url)
}
