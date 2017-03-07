module Main.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Msg(..))
import Field.Update as Field


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        SetProjectName name ->
            check
                { model
                    | projectName = name
                }

        SetProjectBackground color ->
            { model
                | color = color
            }
                ! []

        SetProjectWidth width ->
            check <| Field.handleWidth model width

        SetProjectHeight height ->
            check <| Field.handleHeight model height

        CheckIfReady ->
            { model
                | ready = isReady model
            }
                ! []

        _ ->
            ( model, Cmd.none )


check : Model -> ( Model, Cmd Msg )
check =
    update CheckIfReady


isReady : Model -> Bool
isReady { projectName, canvasSize } =
    List.foldr
        (&&)
        True
        [ projectName /= ""
        , canvasSize.width > 0
        , canvasSize.height > 0
        ]
