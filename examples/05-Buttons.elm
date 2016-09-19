import Html exposing (..)
import Html.App
import Html.Events exposing (onClick)
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


modeloInicial =
        {        listaMascotas = [
                         mascota1
                        ,mascota2
                ]
                , mascotaMostrada = mascota1
        }

mostrarBotones mascota = 
        div [] [
                button [ onClick mascota ] [ text ("Mostrar " ++ mascota.nombre) ]
                ,br [] []
        ]


update mascota model =
        { model | mascotaMostrada = mascota }

view model = 
        div [] [
             h1 [] [ text "Data de mascotas" ]
            ,ul [] [
                    li [] [ text model.mascotaMostrada.nombre ]
                   ,li [] [ text model.mascotaMostrada.animal ]
                   ,li [] [ text model.mascotaMostrada.raza ]
            ]
            ,div [] (List.map (\m ->
                  mostrarBotones m
            ) model.listaMascotas )
        ]


main =
        Html.App.beginnerProgram
                { model = modeloInicial
                , view = view
                , update = update
                }
