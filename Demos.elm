module Demos exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import ResumeView
import ResumeTypes


demos : ResumeTypes.Resume -> List ResumeTypes.Item
demos resume =
    let
        demoable list =
            List.filter
                (\item ->
                    (item.links /= [])
                )
                list

        demoItems section =
            case section of
                ResumeTypes.NestedSection _ items ->
                    demoable items

                ResumeTypes.FlatSection _ _ ->
                    []

                ResumeTypes.InlineSection _ _ ->
                    []
    in
        List.concatMap demoItems resume.body


view : ResumeTypes.Resume -> Html a
view model =
    div []
        [ ResumeView.viewHeader model.header
        , section [ id "demos_repos" ]
            (h2 [ class "sectionHeader" ] [ text "Demos, Repos, More" ]
                :: List.map ResumeView.viewItem (demos model)
            )
        ]
