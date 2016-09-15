import Html exposing (..)

type alias Mascota = 
        { nombre : String
        , animal : String
        , raza : String
        }

neron =
        { nombre = "Neron"
        , animal = "Perro"
        , raza = "Calle"
        }

pascual =
        { nombre = "Pascualito"
        , animal = "Perro"
        , raza = "Calle"
        }

listaMascotas =
        [
                neron
                ,pascual
        ]


main = 
        div [] [

        ]

{-
        (List.map (\ mascota -> 
                br [] []
        ) listaMascotas)
        -- div [] (List.map printMascota listaMascotas)

        div [] [
          text ("Hola " ++ miMascota.nombre)
          ,table [] [
                  
                  
          ]
        ]

  [ thead []
      [ tr []
          [ th [ ascending ] [ text "Material" ]
          , th [ numeric ] [ text "Quantity" ]
          , th [ numeric ] [ text "Unit Price" ]
          ]
      ]
  , tbody []
      [ tr []
          [ td [] [ text "Acrylic (Transparent)" ]
          , td [ numeric ] [ text "25" ]
          , td [ numeric ] [ text "$2.90" ]
          ]
      {- ... -}
      ]
  ]
-}
