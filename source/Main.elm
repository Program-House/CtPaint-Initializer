module Main exposing (..)

import Html
import Ports exposing (..)
import Main.View exposing (view)
import Main.Update exposing (update)
import Main.Subscriptions exposing (subscriptions)
import Main.Init as Init


main =
    Html.program
        { init = ( Init.model, Cmd.none )
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
