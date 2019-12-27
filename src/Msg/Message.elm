module Msg.Message exposing (Msg(..), update)

import Model.Model exposing (Model)


type Msg
    = Msg1


update : Msg -> Model -> Model
update msg model =
    model
