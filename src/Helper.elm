module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


languages : List { name : String, releaseYear : Int, currentVersion : String }
languages =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list


users : List { name : String, uType : String }
users =
    [ { name = "Roberto"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    let
        checkStudent : { name : String, uType : String } -> String
        checkStudent user =
            if user.uType == "Student" then
                user.name

            else
                ""
    in
    List.map checkStudent list


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


games : List Videogame
games =
    [ { title = "Stardew Valley"
      , releaseYear = 1956
      , available = True
      , downloads = 1655155
      , genres = [ "Action", "Granja", "Cultivar", "Aldeanos" ]
      }
    , { title = "Roblox"
      , releaseYear = 2005
      , available = False
      , downloads = 845125
      , genres = [ "Action", "Online", "Multijuegos", "Avatar" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list



--HTML


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "12GB"
    , model = "IdeaPad 3 "
    , brand = "Lenovo"
    , screenSize = "15 pulgadas"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li []
                    [ Html.text ("Ram: " ++ myLaptop.ram)
                    ]
                , Html.li []
                    [ Html.text ("Modelo: " ++ myLaptop.model)
                    ]
                , Html.li []
                    [ Html.text ("Marca: " ++ myLaptop.brand)
                    ]
                , Html.li []
                    [ Html.text ("Pulgadas: " ++ myLaptop.screenSize)
                    ]
                ]
            ]
        ]
