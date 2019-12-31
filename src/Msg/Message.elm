module Msg.Message exposing (Msg(..), update)

import Model.Model exposing (Model)


type Msg
    = ToggleLike


update : Msg -> Model -> Model
update msg model =
    case msg of
        ToggleLike ->
            { model | liked = not model.liked }
