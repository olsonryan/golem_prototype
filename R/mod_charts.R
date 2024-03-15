#' charts UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_charts_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' charts Server Functions
#'
#' @noRd 
mod_charts_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_charts_ui("charts_1")
    
## To be copied in the server
# mod_charts_server("charts_1")
