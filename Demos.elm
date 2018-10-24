module Demos exposing (..)

import Html exposing (..)
import ResumeView
import ResumeTypes exposing (..)


demosNestedSections : Resume -> List Item
demosNestedSections resume =
    let
        demoable list =
            List.filter
                (\item ->
                    (item.links /= [])
                )
                list

        demoItems section =
            case section of
                NestedSection _ items ->
                    demoable items

                FlatSection name flatItems ->
                    []

                InlineSection _ _ ->
                    []
    in
        List.concatMap demoItems resume.body


demosFlatSections : Resume -> List FlatItem
demosFlatSections resume =
    let
        demoFlatItems section =
            case section of
                FlatSection name flatItems ->
                    List.filter (\item -> item.links /= []) flatItems

                _ ->
                    []
    in
        List.concatMap (\s -> demoFlatItems s) resume.body


view : Resume -> Html a
view model =
    div []
        [ ResumeView.viewHeader model.header
        , ResumeView.viewSection
            (NestedSection "Demos, Repos, More" (demosNestedSections model))
        , ResumeView.viewSection
            (FlatSection "Others" (demosFlatSections model))
        ]
