import Html exposing (..)
import Html.App
import Html.Events exposing (onInput)
import Debug

update msg model =
        if msg.data /= "" then
               msg.data 
        else
               "Título"

view model = 
        div [] [
                 h1 [] [ text model ]
                ,input [ onInput (\t -> { data = t }) ] []
        ]


main = 
        Html.App.beginnerProgram { model = "Título", view = view, update = update }
