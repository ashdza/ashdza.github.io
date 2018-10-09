module ResumeTypes
    exposing
        ( Resume
        , Header
        , Link(..)
        , Item
        , Section(..)
        , FlatItem
        , Url
        )


type alias Resume =
    { header : Header
    , body : List Section
    }


type Link
    = More Url
    | Demo Url
    | Repo Url
    | Link String Url


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
    , links : List Link
    }


type alias Url =
    String


type alias FlatItem =
    { name : String, attrs : String, links : List Link }
