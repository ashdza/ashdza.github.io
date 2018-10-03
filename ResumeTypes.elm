module ResumeTypes
    exposing
        ( Resume
        , Header
        , Item
        , Section(..)
        , FlatItem
        , Url
        )


type alias Resume =
    { header : Header
    , body : List Section
    }


type alias Header =
    { name : String
    , affils : List String
    , home : String
    , email : String
    , phone : String
    , links : List { name : String, url : Url }
    }


type Section
    = NestedSection String (List Item)
    | FlatSection String (List FlatItem)
    | InlineSection String (List String)


type alias Item =
    { role : String
    , name : String
    , location : String
    , dates : String
    , details : List String
    , more : Maybe Url
    , repo : Maybe Url
    , demo : Maybe Url
    }


type alias Url =
    String


type alias FlatItem =
    { name : String, attrs : String, more : List (Maybe Url) }
