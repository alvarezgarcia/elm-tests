import Html exposing (..)

type alias Mascota = 
        { nombre : String
        , animal : String
        , raza : String
        }

mascota1 =
        { nombre = "Lorenzo"
        , animal = "Gato"
        , raza = "Gordo"
        }

mascota2 =
        { nombre = "Pascualito"
        , animal = "Perro"
        , raza = "EZpezial"
        }

listaMascotas =
        [
                mascota1
                ,mascota2
        ]

printMascotas m = 
        tr []
                [ td [] [ text m.nombre ]
                , td [] [ text m.animal ]
                , td [] [ text m.raza ]
                ]
main = 
        table []
                [ thead []
                        [ tr []
                                [ th [] [ text "Nombre" ]
                                , th [] [ text "Animal" ]
                                , th [] [ text "Raza" ]
                                ]
                        ]
                , tbody []
                                (List.map printMascotas listaMascotas)
                  ]
