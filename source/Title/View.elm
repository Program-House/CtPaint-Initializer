module Title.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types.Message exposing (Msg(..))


view : Html Msg
view =
    p
        [ class "point really-big centered-text vector"
        , style [ ( "margin-top", "70px" ) ]
        ]
        [ text "CtPaint" ]
