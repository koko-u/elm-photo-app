module View.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput, onSubmit)
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
            , viewComments model
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


viewComment : String -> Html Msg
viewComment comment =
    li []
        [ strong [] [ text "Comment:" ]
        , text <| " " ++ comment
        ]


viewCommentList : List String -> Html Msg
viewCommentList comments =
    case comments of
        [] ->
            text ""

        _ ->
            div [ class "comments" ]
                [ ul [] <|
                    List.map viewComment comments
                ]


viewComments : Model -> Html Msg
viewComments model =
    div []
        [ viewCommentList model.comments
        , Html.form
            [ class "new-comment"
            , onSubmit SaveComment
            ]
            [ input
                [ type_ "text"
                , placeholder "Add a comment..."
                , value model.newComment
                , onInput UpdateComment
                ]
                []
            , button [ disabled <| String.isEmpty model.newComment ]
                [ text "Save" ]
            ]
        ]
