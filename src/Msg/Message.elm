module Msg.Message exposing (Msg(..), update)

import Model.Model exposing (Model)


type Msg
    = Like
    | UnLike


update : Msg -> Model -> Model
update msg model =
    case msg of
        Like ->
            { model | liked = True }

        UnLike ->
            { model | liked = False }
