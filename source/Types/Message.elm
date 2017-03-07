module Types.Message exposing (Msg(..))

import Types.Model exposing (BackgroundColor(..))


type Msg
    = SetUp
    | CheckIfReady
    | SetProjectName String
    | SetProjectWidth String
    | SetProjectHeight String
    | SetProjectBackground BackgroundColor
