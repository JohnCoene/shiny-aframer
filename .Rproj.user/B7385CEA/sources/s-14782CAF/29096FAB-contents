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
            a_primitive(
              "asset-item",
              list(
                id = "model",
                src = "model.ply"
              )
            )
          ),
          a_sky(color = "#ECECEC"),
          a_entity(
            `ply-model` = "src: #model",
            rotation = "-90 0 0"
          )
        )
      )
    )
  )
)

server <- function(input, output){}

shinyApp(ui, server)