module View.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.Model exposing (Model)
import Msg.Message exposing (Msg)


baseUrl : String
baseUrl =
    "https://programming-elm.com/"


url : String -> String
url path =
    baseUrl ++ path


view : Model -> Html Msg
view model =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ]
            ]
        , div
            [ class "content-flow" ]
            [ (detailedPhoto << url) "1.jpg" "Surfing"
            , (detailedPhoto << url) "2.jpg" "The Fox"
            , (detailedPhoto << url) "3.jpg" "Evening"
            ]
        ]


detailedPhoto : String -> String -> Html Msg
detailedPhoto fullUrl caption =
    div [ class "detailed-photo" ]
        [ img [ src fullUrl ] []
        , div [ class "photo-info" ]
            [ h2 [ class "caption" ] [ text caption ] ]
        ]
