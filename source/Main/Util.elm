module Main.Util exposing (isReady)

import Types.Model exposing (Model)
import Types.Message exposing (Msg(..))


isReady : Model -> Bool
isReady { projectName, canvasSize } =
    List.foldr
        (&&)
        True
        [ projectName /= ""
        , canvasSize.width > 0
        , canvasSize.height > 0
        ]
