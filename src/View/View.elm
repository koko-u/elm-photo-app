module View.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.Model exposing (Model)
import Msg.Message exposing (Msg)


view : Model -> Html Msg
view model =
    div []
        [ div [ class "hero is-light" ]
            [ div [ class "hero-body" ]
                [ div [ class "container" ]
                    [ h1 [ class "title" ]
                        [ text "This is Elm simple project Template." ]
                    , h2 [ class "subtitle" ]
                        [ text "Elm is a delightful language for reliable webapps." ]
                    ]
                ]
            ]
        ]
