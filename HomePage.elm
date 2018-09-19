module HomePage exposing (..)

import ResumeTypes
import ResumeView
import Resume
import Menu
import Demos
import Html exposing (..)
import Html.Attributes exposing (..)


-- ----- MODEL


type Mode
    = CV
    | Demos
    | Blog
    | About


menu : List ( String, Mode )
menu =
    [ ( "Resume", CV ), ( "Demos and Source", Demos ), ( "Blog", Blog ), ( "About", About ) ]


type alias Model =
    { mode : Mode
    , resume : ResumeTypes.Resume
    }


init : ( Model, Cmd Msg )
init =
    ( { mode = CV, resume = Resume.theResume }, Cmd.none )



-- ------ UPDATE ----


type Msg
    = MenuAct (Menu.Msg Mode)
    | NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update act model =
    case act of
        NoOp ->
            ( model, Cmd.none )

        MenuAct a ->
            ( { model | mode = Menu.update a }, Cmd.none )



-- ------ VIEW ----


view : String -> Model -> Html Msg
view blogUrl model =
    div
        []
        [ ResumeView.purecss
        , ResumeView.localcss
        , ResumeView.printcss
          -- , ResumeView.printmediaCss
        , div
            [ id "layout" ]
            [ Html.map MenuAct (Menu.view menu model.mode)
            , case model.mode of
                CV ->
                    ResumeView.view model.resume

                Demos ->
                    Demos.view model.resume

                Blog ->
                    div
                        []
                        [ ResumeView.viewHeader model.resume.header
                        , section
                            [ id "blog_repos" ]
                            [ h2 [ class "sectionHeader" ] [ text "Blog" ]
                            , h4 [ class "itemName" ]
                                [ text "I finally started my blog."
                                , a [ class "itemName", href blogUrl, target "_blank" ] [ text "Here it is." ]
                                ]
                            ]
                        ]

                About ->
                    div
                        []
                        [ div
                            []
                            [ ResumeView.viewHeader model.resume.header
                            , section
                                [ id "about" ]
                                [ h2 [ class "sectionHeader" ] [ text "About" ]
                                , h4
                                    [ class "itemName" ]
                                    [ text "This site is written entirely in "
                                    , a [ href "http://www.elm-lang.org", target "_blank" ] [ text "Elm" ]
                                    , text ". Here is the "
                                    , a [ href "http://www.github.com/ashdza/ashdza.github.io.git", target "_blank" ] [ text "repo." ]
                                    ]
                                ]
                            ]
                        ]
            ]
        ]


blogUrl =
    "https://ashdza.github.io/blog/"


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view blogUrl
        , subscriptions = \_ -> Sub.none
        }
