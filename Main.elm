module Main exposing (..)

import Html exposing (..)
import Html.App as App


main : Program Never
main =
    App.beginnerProgram { model = model, update = update, view = view }



-- MODEL


type alias Model =
    { sizeInGb : Int
    }


model : Model
model =
    { sizeInGb = 0
    }



-- UPDATE


type Msg
    = Nothing


update : Msg -> Model -> Model
update msg model =
    model



-- VIEW


view : Model -> Html msg
view model =
    div [] []
