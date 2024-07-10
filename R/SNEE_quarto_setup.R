#' @rdname SNEE_quarto_setup
#' @name SNEE_quarto_setup
#' @title SNEE quarto setup
#'
#' @description
#' Creates a quarto document or presentation template and stores in new or existing project folder
#'
#' @param type The quarto type, either document or presentation.
#' @param format The format of the final presentation, either html or office (ppt/doc).
#' @param file_path The folder where the template and associated files should be stored. This can be an existing or new folder.
#' @param file_name The name of the quarto template created.
#'
#' @return Quarto template ready for editing.
#'
NULL
#' @export
#' @importFrom fs dir_exists dir_create file_exists file_copy
#' @examples
#' \dontrun{# Create quarto html presentation "draft1.qmd" in "outputs" folder of project
#' library(SNEEstyle)
#' SNEE_quarto_setup(type = "presentation", format = "html", "outputs", "draft1")}
#' @rdname SNEE_logo

SNEE_quarto_setup <- function(type = c("document", "presentation"),
                              format = c("html", "office"),
                              file_path,
                              file_name) {

  if (is.null(file_path)) {
    stop("You must provide a valid file_path")
  }

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  out_dir <- file_path

  if (!fs::dir_exists(out_dir)) {
    fs::dir_create(out_dir)
  }

  if (format == "html") {

    if (type == "presentation") {


      if (!fs::file_exists(paste0(out_dir, "/", "SNEE_IF_logo.png"))) {
        fs::file_copy(system.file("images/SNEE_IF_logo.png", package = "SNEEstyle"),
                      out_dir)
      }

      if (!fs::file_exists(paste0(out_dir, "/", "SNEE_IF_background.png"))) {
        fs::file_copy(system.file("images/SNEE_IF_background.png", package = "SNEEstyle"),
                      out_dir)
      }

      if (!fs::file_exists(paste0(out_dir, "/", "custom.scss"))) {
        fs::file_copy(system.file("themes/custom.scss", package = "SNEEstyle"),
                      out_dir)
      }

      if (!fs::file_exists(paste0(out_dir, "/", file_name))) {
        fs::file_copy(system.file("templates/SNEE_html_presentation_template.qmd", package = "SNEEstyle"),
                      paste0(out_dir, "/", file_name, ".qmd"))
      }

    } else {

      if (!fs::file_exists(paste0(out_dir, "/", file_name))) {
        fs::file_copy(system.file("templates/SNEE_html_document_template.qmd", package = "SNEEstyle"),
                      paste0(out_dir, "/", file_name, ".qmd"))
      }

    }

  } else {

    if (type == "presentation"){

      if (!fs::file_exists(paste0(out_dir, "/", "SNEE_ppt_template.pptx"))) {
        fs::file_copy(system.file("templates/SNEE_ppt_template.pptx", package = "SNEEstyle"),
                      out_dir)
      }

      if (!fs::file_exists(paste0(out_dir, "/", file_name))) {
        fs::file_copy(system.file("templates/SNEE_ppt_presentation_template.qmd", package = "SNEEstyle"),
                      paste0(out_dir, "/", file_name, ".qmd"))
      }

    } else {

      stop("SNEE Intelligence Function Word template not yet available")

    }

  }

  # open the file in the editor

  file.edit(paste0(out_dir, "/", file_name, ".qmd"))

}
