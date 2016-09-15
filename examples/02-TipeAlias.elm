import Html exposing (..)

type alias Mascota = 
        { nombre : String
        , animal : String
        , raza : String
        }

miMascota =
        { nombre = "Neron"
        , animal = "Perro"
        , raza = "Calle"
        }


main = 
        div [] [
          text ("Hola " ++ miMascota.nombre)
        ]
