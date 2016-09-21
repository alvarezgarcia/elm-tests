import Html exposing (..)
import Html.App
import Html.Events exposing (onInput)
import Debug
import Regex exposing (..)

listaOpciones =
        ["Primero", "Segundo", "Tercero", "Principio"]

model = {
    lista = listaOpciones,
    listaFiltrada = listaOpciones
 }

update msg model =
        let
                pattern = msg.patron
                s = List.filter (\ e -> contains (regex pattern) e) model.lista
        in
                { model | listaFiltrada = s }

view model = 
        div [] [
                 h1 [] [ text "Título" ]
                ,input [ onInput (\t -> { patron = t }) ] []
                ,ul [] (List.map (\e -> li [] [text e]) model.listaFiltrada)
        ]


main = 
        Html.App.beginnerProgram { model = model, view = view, update = update }
