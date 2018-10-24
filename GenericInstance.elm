module Main exposing (..)

import Generic exposing (..)


desmond : Person
desmond =
    { name = ( "Desmond", "D'Souza" )
    , address = "9901 Spicewood Mesa, Austin, TX 78759"
    , email = "desmond@dsouzaville.com"
    , phone = "512-689-8496"
    , other =
        [ Link "github" "desmond-dsouza.github.io"
        , Link "LinkedIn" "desmond.linkedin.com"
        ]
    }


hisStuff : List Item
hisStuff =
    [ Nested "Education" [] []
    , Nested "Employment" [] []
    , Nested "Conferences" [] []
    , Nested "Books" [] []
    , Nested "Projects" [] []
    , Nested "Software Skills" [] []
    ]
