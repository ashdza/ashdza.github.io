module ResumeView exposing (..)

import ResumeTypes exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import String


-- ------ MODEL ----


type alias Model =
    Resume


type alias Item =
    ResumeTypes.Item



-- ----- VIEW ---


nullHtml : Html a
nullHtml =
    node "noscript" [] []


viewLink : Link -> Html a
viewLink link =
    let
        ( name, url ) =
            case link of
                More u ->
                    ( "more", u )

                Demo u ->
                    ( "demo", u )

                Repo u ->
                    ( "repo", u )

                Link s u ->
                    ( s, u )
    in
        a [ class "link", href url, target "_blank" ] [ text name ]


viewItem : Item -> Html a
viewItem item =
    let
        { name, role, location, dates, details, links } =
            item

        -- srcLink =
        --     linkFor "repo" repo
        -- demoLink =
        --     linkFor "demo" demo
        -- moreLink =
        --     linkFor "more" more
    in
        div [ class "item" ]
            [ div [ class "itemLeft" ]
                [ h3 [ class "itemName" ]
                    [ text name
                    , span [ class "itemRole" ] [ text role ]
                    , span [] (List.map viewLink links)
                    ]
                , ul [ class "itemDetails" ]
                    (List.map (\x -> li [ class "detail" ] [ text x ]) details)
                ]
            , div [ class "itemAttrs" ]
                [ div [ class "itemDates" ] [ text dates ]
                , div [ class "itemLocation" ] [ text location ]
                ]
            ]


bullet : Html a
bullet =
    span [ class "bullet" ] []


viewHeader : Header -> Html a
viewHeader header =
    let
        short url =
            String.dropLeft 8 url
    in
        section [ id "header" ]
            [ div [ id "namePhoto" ]
                [ div [ id "nameAffil" ]
                    (h1 [ class "myName" ] [ text header.name ]
                        :: (List.map
                                (\affil -> div [ class "affil" ] [ text affil ])
                                header.affils
                           )
                    )
                ]
            , div [ class "myContactInfo" ]
                [ -- div [] [ text header.home ]
                  div []
                    [ bullet
                    , text header.email
                    , bullet
                    , text header.phone
                    ]
                , div [ id "urls" ]
                    (List.concatMap
                        (\{ name, url } ->
                            [ bullet
                            , text name
                            , a [ href url, target "_blank" ] [ text (short url) ]
                            ]
                        )
                        header.links
                    )
                ]
            ]


sectionHeader : String -> Html a
sectionHeader name =
    h2 [ class "sectionHeader" ] [ span [] [ text name ] ]


viewNestedSection : String -> List Item -> Html a
viewNestedSection name items =
    section []
        (sectionHeader name
            :: List.map viewItem items
        )


viewFlatSection : String -> List FlatItem -> Html a
viewFlatSection name items =
    section []
        [ sectionHeader name
        , ul []
            (List.map
                (\{ name, attrs, links } ->
                    li [ class "split-l-r" ]
                        [ span [ class "left" ] ([ text name ] ++ (List.map viewLink links))
                        , span [ class "right" ] [ text attrs ]
                        ]
                )
                items
            )
        ]


viewInlineSection : String -> List String -> Html a
viewInlineSection name items =
    section []
        [ sectionHeader name
        , div [ class "bulletSepList" ]
            (List.map
                (\item -> span [] [ bullet, text item ])
                items
            )
        ]


viewSection : Section -> Html a
viewSection s =
    case s of
        NestedSection name items ->
            viewNestedSection name items

        FlatSection name items ->
            viewFlatSection name items

        InlineSection name items ->
            viewInlineSection name items


view : Model -> Html a
view model =
    div [ id "resume" ]
        ([ --     purecss
           --  , localcss
           --  , printcss
           --  , printmediaCss
           viewHeader model.header
         ]
            ++ List.map viewSection model.body
        )
