module Field.View exposing (..)

import Html exposing (Html, Attribute, div, p, text, input)
import Html.Attributes exposing (class, style, value, placeholder)
import Html.Events exposing (onInput)
import Types.Message exposing (Msg(..))


name : String -> Html Msg
name n =
    row "name"
        [ fieldClass "width-200"
        , placeholder "project name"
        , value n
        , onInput SetProjectName
        ]


width : Int -> Html Msg
width w =
    row "width"
        [ fieldClass "width-65"
        , placeholder "px"
        , value (toString w)
        , onInput SetProjectWidth
        ]


height : Int -> Html Msg
height h =
    row "height"
        [ fieldClass "width-65"
        , placeholder "px"
        , value (toString h)
        , onInput SetProjectHeight
        ]


row : String -> List (Attribute Msg) -> Html Msg
row name attributes =
    container "row"
        [ container "field"
            [ p
                [ class "point form" ]
                [ text name ]
            ]
        , container "input"
            [ input attributes [] ]
        ]


container : String -> List (Html Msg) -> Html Msg
container classExtension =
    div [ class ("form-" ++ classExtension) ]


fieldClass : String -> Attribute Msg
fieldClass str =
    class ("field " ++ str)
