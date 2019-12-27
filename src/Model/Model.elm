module Model.Model exposing (Model, init)


baseUrl : String
baseUrl =
    "https://programming-elm.com/"


type alias Model =
    { url : String
    , caption : String
    }


init : Model
init =
    { url = baseUrl ++ "1.jpg"
    , caption = "Surfing"
    }
