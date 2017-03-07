module Main.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (on, onInput, keyCode)
import Title.View as Title
import OkayButton.View as OkayButton
import Field.View as Field
import Field.ColorPicker as ColorPicker
import Types.Model exposing (Model)
import Types.Message exposing (Msg(..))


view : Model -> Html Msg
view { projectName, ready, canvasSize, color } =
    div
        [ class "main" ]
        [ div
            [ class "window-card init" ]
            [ Title.view
            , Field.name projectName
            , Field.width canvasSize.width
            , Field.height canvasSize.height
            , ColorPicker.view color
            , OkayButton.view ready
            ]
        ]
