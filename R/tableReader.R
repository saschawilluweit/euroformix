#' @title tableReader
#' @author Oyvind Bleka, Sascha Willuweit
#' @description  A function for reading tables in a streamlined way
#' @details This function reads a text based table with a header and columns are separated by on of [,\t |;:]
#' @export
 tableReader=function(filename, kit_name = NULL) {
  if (!file.exists(filename)) {
    stop(paste0("Table '", filename, "' was not found."))
  }

  suppressPackageStartupMessages(library("data.table", quietly = TRUE, character.only = TRUE))

  t <- fread(filename, header = TRUE, data.table = FALSE, fill = TRUE, blank.lines.skip = TRUE, na.strings = "", encoding = "UTF-8")

  if (ncol(t) < 1 || length(names(t)) < 1) {
    stop(paste0("Table '", filename, "' does not contain enough information or could not be parsed correctly."))
  }
  return(t)
}