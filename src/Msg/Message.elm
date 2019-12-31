module Msg.Message exposing (Msg(..), update)

import Model.Model exposing (Model, saveNewComment)


type Msg
    = ToggleLike
    | UpdateComment String
    | SaveComment


update : Msg -> Model -> Model
update msg model =
    case msg of
        ToggleLike ->
            { model | liked = not model.liked }

        UpdateComment inputComment ->
            { model | newComment = inputComment }

        SaveComment ->
            saveNewComment model
