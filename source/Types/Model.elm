module Types.Model
    exposing
        ( Model
        , Size
        , BackgroundColor(..)
        )


type alias Model =
    { projectName : String
    , canvasSize : Size
    , ready : Bool
    , color : BackgroundColor
    }


type alias Size =
    { width : Int
    , height : Int
    }


type BackgroundColor
    = Black
    | White
    | Transparent
