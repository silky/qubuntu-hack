module Main exposing (..)

import Browser
import Css                   exposing (css) 
import Html                  exposing ( Html, node, a, div, h2, p
                                      , text, input, small, img
                                      , b, h3
                                      )
import Html.Attributes       exposing ( class, type_, placeholder
                                      , src, href
                                      )

import Time exposing         (every)


wrapCss v m
  = div [] [ node "style" [] [ text css ]
           , v m
           ]

main : Program () Model Msg
main =
  Browser.element
    { view = wrapCss view
    , init = init
    , update = update
    , subscriptions = \_ -> Time.every 1000 Tick
    }

type alias Language = String

type alias Model =
  { languages : List Language
  , hackTimeRemaining : Int
  }

type Msg
  = NoOp
  | Tick Time.Posix

init : () -> (Model, Cmd Msg)
init _ = ( initModel, Cmd.none )

initModel =
    { languages = List.sort <|
        [ "Clojure"
        , "OCaml"
        , "F#"
        , "Haskell"
        , "Scala"
        , "JavaScript"
        , "Cirq"
        , "Python"
        , "Lisp"
        , "Q#"
        , "OpenQASM"
        , "QUIL"
        ]
    , hackTimeRemaining = 60
    }

hackTime : Int -> Html Msg
hackTime n =
  case n of
    0 -> div [ class "hack-time" ] [ text "Hack failed!" ]
    m -> div [ class "hack-time" ]
             [ p [ class "hack-warning" ] [ text "Hack Time Remaining" ] 
             , text <| String.fromInt n ++ "s"
             ]

view : Model -> Html Msg
view model =
  div [ class "login" ]
      [ div [ class "header" ]
            [ p [] [ b [] [ text "Computer Kind" ]
                   , text ": "
                   , text "Quantum"
                   ]
            , p [] [ b [] [ text "Server Region" ]
                   , text ": "
                   , text "TSR6"
                   ]
            , p [] [ b [] [ text "System Status" ]
                   , text ": "
                   , text "Hacked"
                   ]
            , p [] [ b [] [ text "Qubits Online" ]
                   , text ": "
                   , text "100%"
                   ]
            , p [] [ b [] [ text "Haskell" ]
                   , text ": "
                   , text "Love"
                   ]
            ]
      , hackTime model.hackTimeRemaining
      , div [ class "user-info" ]
            [ div [ class "user-image" ]
                  [ img [ src "user.png" ] []
                  ]
            , text "Noon"
            , input [ type_ "password"
                    , class "username"
                    , placeholder "Password"
                    ] []
            ]
      , div [ class "languages" ]
            ( listLanguages model.languages )

      , div [ class "footer" ]
            [ h2 [] [ text "qubuntu", small [] [ text "|v1.2>" ] ]
            ]
      , div [ class "the-net" ]
            [ a [ href "https://www.youtube.com/watch?v=pXPXMxsXT28" ] [ text "π" ]
            ] 
      ]

listLanguages : List Language -> List (Html Msg)
listLanguages languages 
  = let
      mkLanguage a = 
        div [ class "lang" ]
            [ text a
            ]
    in
      [ h3 [] [ text "Pick your language" ]
      , div [ class "lang-list" ] ( List.map mkLanguage (languages ++ ["..."]) )
      ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp -> ( model, Cmd.none )
    Tick _ ->
      ( { model | hackTimeRemaining = max 0 (model.hackTimeRemaining - 1) }
      , Cmd.none
      )
