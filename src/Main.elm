module Main exposing (main)

import Browser exposing (sandbox)
import Model.Model exposing (Model, init)
import Msg.Message exposing (Msg, update)
import View.View exposing (view)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
