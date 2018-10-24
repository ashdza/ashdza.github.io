module Generic exposing (..)


type alias Resume =
    { who : Person
    , what : List Item
    }


type alias Person =
    { name : ( String, String )
    , address : String
    , email : String
    , phone : String
    , other : List Annotation
    }


type Annotation
    = Location String
    | More Url
    | Demo Url
    | Repo Url
    | Link String Url
    | Text String


type Text
    = Plain String
    | Markdown String


type Item
    = Atomic Text (List Annotation)
    | Nested Text (List Annotation) (List Item)


type alias Url =
    String
