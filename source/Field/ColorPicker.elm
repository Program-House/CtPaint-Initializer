module Field.ColorPicker exposing (view)

import Html exposing (div, p, input, text, Attribute, Html)
import Html.Attributes exposing (class, style, value, type_)
import Html.Events exposing (onMouseDown)
import Types.Model exposing (BackgroundColor(..))
import Types.Message exposing (Msg(..))


view : BackgroundColor -> Html Msg
view color =
    let
        colorSelection =
            colorSelector color
    in
        div
            [ class "form-row" ]
            [ div
                [ class "form-field" ]
                [ p
                    [ class "point form" ]
                    [ text "background" ]
                ]
            , div
                [ class "form-input" ]
                [ colorSelection Black
                    [ ( "background", "#000000" )
                    , ( "margin-right", "4px" )
                    ]
                , colorSelection White
                    [ ( "background", "#ffffff" )
                    , ( "margin-right", "4px" )
                    ]
                , colorSelection Transparent
                    [ ( "background", "url(\"./transparency-icon.png\")" ) ]
                ]
            ]


colorSelector : BackgroundColor -> BackgroundColor -> List ( String, String ) -> Html Msg
colorSelector c0 c1 s =
    input
        [ selectionClass c0 c1
        , setBackground c1
        , type_ "submit"
        , value " "
        , style s
        ]
        []


setBackground : BackgroundColor -> Attribute Msg
setBackground =
    onMouseDown << SetProjectBackground


selectionClass : BackgroundColor -> BackgroundColor -> Attribute Msg
selectionClass c0 c1 =
    "color-selection width-64"
        ++ (colorSelected c0 c1)
        |> class


colorSelected : BackgroundColor -> BackgroundColor -> String
colorSelected c0 c1 =
    if c0 == c1 then
        " selected"
    else
        ""
