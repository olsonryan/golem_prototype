#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  fluidPage(
    golem_add_external_resources(),
    titlePanel("Golem Prototype"),
    shiny::tabsetPanel(
      type = "tabs",
      shiny::tabPanel("Data"),

    )
    )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "golem.prototype"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}

