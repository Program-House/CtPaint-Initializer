module Main.Init exposing (model)

import Types.Model exposing (Model, Size, BackgroundColor(..))


model : Model
model =
    { projectName = ""
    , canvasSize = Size 200 200
    , ready = False
    , color = White
    }
