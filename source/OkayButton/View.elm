module OkayButton.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Types.Message exposing (Msg(..))


view : Bool -> Html Msg
view ready =
    div
        [ class "form-submit-container" ]
        [ input
            [ buttonClass ready
            , value "Okay"
            , type_ "submit"
            , onClick TrySetUp
            ]
            []
        ]


buttonClass : Bool -> Attribute Msg
buttonClass ready =
    if ready then
        class "button"
    else
        class "button null"
