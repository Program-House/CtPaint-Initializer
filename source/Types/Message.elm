module Types.Message exposing (Msg(..))

import Types.Model exposing (BackgroundColor(..))


type Msg
    = TrySetUp
    | CheckIfReady
    | SetProjectName String
    | SetProjectWidth String
    | SetProjectHeight String
    | SetProjectBackground BackgroundColor
