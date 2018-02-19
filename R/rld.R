#' Unload and relaod package
#'
#' This is a wrapper around the \code{\link[devtools]{reload}} function, with an
#' API similar to the \code{\link[base]{library}} function in the sense that the
#' \code{package} argument is the name of a package given either as a name or a
#' literal character string.
#'
#' @param package the name of a package, given as a name or literal character
#'                string.
#'
#' @author Marc Choisy
#'
#' @importFrom devtools inst reload
#'
#' @export
#'
rld <- function(package) {
  reload(inst(as.character(substitute(package))))
}
