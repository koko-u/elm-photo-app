module View.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.Model exposing (Model)
import Msg.Message exposing (Msg)


view : Model -> Html Msg
view model =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ]
            ]
        , div
            [ class "content-flow" ]
            [ div [ class "detailed-photo" ]
                [ img [ src "https://programming-elm.com/1.jpg" ] []
                , div [ class "photo-info" ]
                    [ h2 [ class "caption" ] [ text "Surfing" ] ]
                ]
            ]
        ]
