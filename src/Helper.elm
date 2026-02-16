module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 num1 num2 =
    num1 + num2


add3 : Float -> Float -> Float -> Float
add3 num1 num2 num3 =
    num1 + num2 + num3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc num1 num2 operation =
    operation num1 num2


languages : List { name : String, releaseYear : Int, currentVersion : String }
languages =
    [ { name = "Elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "Haskell"
      , releaseYear = 1990
      , currentVersion = "8.10.7"
      }
    ]


lenguageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
lenguageNames languagesList =
    List.map .name languagesList


type alias RecordName =
    { name : String
    , uType : String
    }


users : List RecordName
users =
    [ { name = "Alice"
      , uType = "Student"
      }
    , { name = "Bob"
      , uType = "Professor"
      }
    , { name = "Charlie"
      , uType = "Student"
      }
    ]


onlyStudents : { name : String, uType : String } -> List String
onlyStudents usersList =
    case usersList.uType of
        "Student" ->
            [ usersList.name ]

        _ ->
            []


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


gameinfo : List Videogame
gameinfo =
    [ { title = "The Legend of Zelda: Breath of the Wild"
      , releaseYear = 2017
      , available = True
      , downloads = 20000000
      , genres = [ "Action-adventure", "Open world" ]
      }
    , { title = "Super Mario Odyssey"
      , releaseYear = 2017
      , available = True
      , downloads = 15000000
      , genres = [ "Platform", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List String
getVideogameGenres list =
    List.concatMap .genres list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "XPS 15 9500"
    , brand = "Dell"
    , screenSize = "15.6 inches"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 []
            [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li []
                    [ Html.text ("Ram: " ++ myLaptop.ram) ]
                , Html.li
                    []
                    [ Html.text ("Modelo: " ++ myLaptop.model) ]
                , Html.li
                    []
                    [ Html.text ("Marca: " ++ myLaptop.brand) ]
                , Html.li
                    []
                    [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
