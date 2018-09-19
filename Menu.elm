module Menu exposing (..)

-- Takes any type 'a' in choices : List (String, a)
-- Sets up a UI-callback of (Select a) for each choice
-- Returns the selected 'a' on update
-- So the Action type is parameterized by 'a'
-- Has no private state, all context passed by parent to view & to update

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- ------- UPDATE ----


type Msg a
    = Select a


update : Msg a -> a
update (Select a) =
    a



-- ------- VIEW ----


view : List ( String, a ) -> a -> Html (Msg a)
view choices sel =
    let
        itemClass val selVal =
            if val /= selVal then
                "pure-menu-item"
            else
                "pure-menu-item pure-menu-selected"
    in
        div [ id "menu" ]
            [ div [ class "pure-menu" ]
                [ span [ class "pure-menu-heading" ] [ text "Choose" ]
                , ul [ class "pure-menu-list" ]
                    (List.map
                        (\( str, val ) ->
                            li
                                [ class (itemClass val sel)
                                , onClick (Select val)
                                ]
                                [ text str ]
                        )
                        choices
                    )
                ]
            ]
