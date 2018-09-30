library(shiny)
library(aframer)
library(aextras)

ui <- fluidPage(
  title = "aframer",
  fluidRow(
    column(
      12,
      embed_aframe(
        height = "100vh",
        a_scene(
          a_dependency(),
          aextras_dependency(),
          a_assets(
            timeout = 25000,
            a_asset_item(
              id = "obj", 
              src = "model.obj"
            ),
            a_asset_item(
              id = "mtl", 
              src = "model.mtl"
            )
          ),
          a_sky(color = "#ECECEC"),
          a_obj_model(
            src = "#obj",
            mtl = "#mtl",
            rotation = "-90 0 0"
          ),
          a_entity(
            a_camera(
              position = "0 0 25"
            )
          )
        )
      )
    )
  )
)

server <- function(input, output){}

shinyApp(ui, server)