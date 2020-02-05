#' @title getKit
#' @author Oskar Hansson
#' @description Function to get kit information. Tided up by Oyvind Bleka
#' @details Returns kit information provided at kit-description file
#' @param filename Path to kit-description file
#' @param kit_name If provided select the appropriate kit from <filename> otherwise just use the first one.
#' @return A data frame with kit information
#' @export

getKit <- function(filename = NULL, kit_name = NULL) {
  if (is.null(filename)) {
    filename <- system.file("extdata", "kit_database.txt", package = "euroformix", mustWork = TRUE)
  }

  kit <- tableReader(filename)

  if (is.null(kit_name)) {
    kit_name <- unique(kit$Short.Name)[1]
  } else if (!is.element(kit_name, unique(kit$Short.Name))) {
    stop(paste0("Kit '", kit_name, "' ist not known to kit_database '", filename, "'."))
  }

  kit <- kit[kit$Short.Name == kit_name, ]

  r <- data.frame(Panel = kit$Panel,
                  Short.Name = kit$Short.Name,
                  Full.Name = kit$Full.Name,
                  Marker = kit$Marker,
                  Allele = kit$Allele,
                  Size = kit$Size,
                  Size.Min = kit$Size.Min,
                  Size.Max = kit$Size.Max,
                  Virtual = kit$Virtual,
                  Color = kit$Color,
                  Repeat = kit$Repeat,
                  Marker.Min = kit$Marker.Min,
                  Marker.Max = kit$Marker.Max,
                  Offset = kit$Offset,
                  Gender.Marker = kit$Gender.Marker,
                  stringsAsFactors = FALSE)
  r$Marker <- factor(r$Marker, levels = unique(r$Marker)) # Create useful factors.

  return(r)
}
