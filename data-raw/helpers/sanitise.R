sanitise <- function(x, category, organism) {
  old.attr <- attributes(x)
  if (category == "pathway") {
    ans <- gsub("(path:)(.+)(\\d{5})", paste0(organism, "\\3"), x)
  }
  if (category == "module") {
    ans <- gsub("(md:)(.*)(M\\d{5})", "\\3", x)
  }
  if (category == "enzyme") {
    ans <- ifelse(grepl(pattern = "-", x = x),
                  NA,
                  gsub("(ec:)(\\d+\\.\\d+\\.\\d+\\.\\d+)", "\\2", x))
  }
  if (category == "gene") {
    ans <- gsub(paste0("(", organism, ":)(.*\\d+)"), "\\2", x)
  }
  if (category == "reaction") {
    ans <- gsub("(rn:)(R\\d{5})", "\\2", x)
  }
  if (category == "compound") {
    ans <- gsub("(cpd:)(C\\d{5})", "\\2", x)
  }

  attributes(ans) <- old.attr
  ans
}
