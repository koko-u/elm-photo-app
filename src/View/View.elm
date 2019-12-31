module View.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Model.Model exposing (Model)
import Msg.Message exposing (Msg(..))


view : Model -> Html Msg
view model =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ]
            ]
        , div
            [ class "content-flow" ]
            [ detailedPhoto model
            ]
        ]


detailedPhoto : Model -> Html Msg
detailedPhoto model =
    div [ class "detailed-photo" ]
        [ img [ src model.url ] []
        , div [ class "photo-info" ]
            [ loveButton model
            , h2 [ class "caption" ] [ text model.caption ]
            ]
        ]


loveButton : Model -> Html Msg
loveButton model =
    let
        buttonClass =
            if model.liked then
                "on"

            else
                "off"
    in
    div [ class "like-button", onClick ToggleLike ]
        [ span [ class buttonClass ]
            [ i [ class "fas fa-heart fa-2x" ] []
            ]
        ]
