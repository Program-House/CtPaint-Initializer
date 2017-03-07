module Main.Subscriptions exposing (subscriptions)

import Ports exposing (..)
import Types.Model exposing (Model)
import Types.Message exposing (Msg(..))


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



--fromJS HandlePort
