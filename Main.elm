module Main exposing (..)

import Html exposing (..)
import Html.App as App
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import String exposing (toInt)


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
    = UpdateSize String


update : Msg -> Model -> Model
update msg model =
    case msg of
        UpdateSize text ->
            case toInt text of
                Err msg ->
                    model

                Ok val ->
                    { model | sizeInGb = val }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ input [ onInput UpdateSize, placeholder "Drive size in GB" ] []
        , div [] [ text (toString model.sizeInGb) ]
        ]
