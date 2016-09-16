import Html exposing (..)
import Debug

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
        let 
            {raza, animal} = m
        in 
            li [] [ text raza]

view = 
        div [] [
                 h1 [] [ text "Hola" ]
                ,ul [] (List.map (\m ->
                                printMascotas m,
                                printMascotas m
                                )
                        listaMascotas)
        ]
                
        


main =
        view
