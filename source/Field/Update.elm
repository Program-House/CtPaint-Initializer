module Field.Update exposing (..)

import Types.Model exposing (Model, Size)
import Types.Message exposing (Msg(..))
import ParseInt exposing (parseInt)


handleWidth : Model -> String -> Model
handleWidth model width =
    let
        newWidth =
            parse width model.canvasSize.width
    in
        Size newWidth model.canvasSize.height
            |> setCanvasSize model


handleHeight : Model -> String -> Model
handleHeight model height =
    parse height model.canvasSize.height
        |> Size model.canvasSize.width
        |> setCanvasSize model


setCanvasSize : Model -> Size -> Model
setCanvasSize model size =
    { model | canvasSize = size }


parse : String -> Int -> Int
parse str current =
    case parseInt str of
        Ok int ->
            int

        Err _ ->
            current
