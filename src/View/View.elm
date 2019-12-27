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
    let
        buttonClass =
            if model.liked then
                "on"

            else
                "off"

        msg =
            if model.liked then
                UnLike

            else
                Like
    in
    div [ class "detailed-photo" ]
        [ img [ src model.url ] []
        , div [ class "photo-info" ]
            [ div [ class "like-button", onClick msg ]
                [ span [ class buttonClass ]
                    [ i [ class "fas fa-heart fa-2x" ] []
                    ]
                ]
            , h2 [ class "caption" ] [ text model.caption ]
            ]
        ]
