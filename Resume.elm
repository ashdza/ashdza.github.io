module Resume exposing (theResume)

import ResumeTypes exposing (..)
import ResumeView exposing (view)
import Html exposing (..)


-- ----- DATA ---


theResume : Resume
theResume =
    { header = header
    , body =
        [ NestedSection "Education" education
        , NestedSection "Conference Presentations" awards
        , NestedSection "Projects" projects
        , NestedSection "Software Development Skills" programming
        , NestedSection "Work Experience" work
        , FlatSection "Organizations and Activities" activities
        ]
    }


header : Header
header =
    { name = "Ashley D'Souza"
    , affils = []
    , home = "9901 Spicewood Mesa, Austin, TX 78759"
    , email = "akd6@rice.edu"
    , phone = "512-258-8189"
    , links =
        [ { name = "Home:", url = "https://ashdza.github.io" }
        , { name = "Github:", url = "https://github.com/ashdza" }
        , { name = "LinkedIn:", url = "https://goo.gl/58fLVD" }
        ]
    }


education : List Item
education =
    [ { name = "Rice University"
      , location = "Houston, TX"
      , dates = "Fall 2017 - present"
      , role = ""
      , details =
            [ "Computer Science, graduating May 2021, GPA: 3.21"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    , { name = "Westwood High School"
      , location = "Austin, TX"
      , dates = "Fall 2013 - 2017"
      , role = ""
      , details =
            [ "GPA: 4.0/4.0 (5.58/5.0 weighted), Graduated May 2017"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    ]


awards : List Item
awards =
    [ { name = "PyoFuel: Using Python and Pathway Tools to engineer Synthetic Biofuel"
      , role = "Sole Author"
      , location = "Colorado"
      , dates = "Dec 2016"
      , details =
            [ "Int'l. Soc. for Computational Biology / Rocky Mountain Bioinformatics Conference (poster session)"
            ]
      , more = Just "https://www.iscb.org/cms_addon/conferences/rocky2016/track/posters.php#P19"
      , repo = Nothing
      , demo = Nothing
      }
    ]


projects : List Item
projects =
    [ { name = "Lentil - A Musician's Feedback Service"
      , role = "Independent Project"
      , location = ""
      , dates = "Summer 2018 - present"
      , details =
            [ "Conceive, design, and implement a web-based musician feedback service (ReasonML + React)"
            , "Musicians submit recordings of performances and receive pointed feedback from teachers"
            ]
      , more = Nothing
      , repo = Just "https://github.com/ashdza/lentil"
      , demo = Just "https://lentil.7insights.com/src/index.html"
      }
    , { name = "Physics Sunset"
      , role = "Independent Project"
      , location = ""
      , dates = "Summer 2017"
      , details =
            [ "Design and implement browser-based interactive graphical simulation of a physics problem (ReasonML)"
            ]
      , more = Nothing
      , repo = Just "https://github.com/ashdza/physics-sunset"
      , demo = Just "https://physics.7insights.com/public/index.html"
      }
    , { name = "Disease Transmission Analysis"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Design and implement Rooted-Directed Minimal Spanning Tree algorithm (Python)"
            , "Analyze genetic + epidemiological data from 2011 disease outbreak to infer the disease transmission tree"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    , { name = "DNA Sequence Alignment"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Design and implement DP solutions to two DNA sequence alignment problems (Python)"
            , "Align human and fruit-fly protein sequences to identify the PAX domain within the \"eyeless\" gene"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    , { name = "Phylogenetic (Evolutionary) Trees"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Infer the optimal evolutionary tree, given DNA sequences for the leaf taxa (Python)"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    , { name = "Hidden Markov Models and Part-of-Speech Tagging"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Implement statistical training of HMM model using training corpus of pre-tagged sentences (Python)"
            , "Implement Viterbi algorithm to assign part-of-speech tags to new sentences using trained HMM"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    , { name = "Chef Arduino"
      , role = "Independent Project"
      , location = ""
      , dates = "Fall 2010-2011"
      , details =
            [ "Conceive, design, build, and program an Arduino-based robot to test properties of food samples"
            ]
      , more = Nothing
      , repo = Just "https://github.com/ashdza/chef_arduino"
      , demo = Nothing
      }
    ]


programming : List Item
programming =
    [ { name = "Programming Languages & Frameworks"
      , role = ""
      , location = ""
      , dates = "2013 - present"
      , details =
            [ "Proficient: Python, Java, ReasonML/OCaml, React"
            , "Basic: C, Racket, Pyret, Elm, Html, Numpy"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    , { name = "Software Design"
      , role = ""
      , location = ""
      , dates = "2013 - present"
      , details =
            [ "Systematic Program Design - Designing Data & Functions, EdX course based on HtDP2"
            , "Functional programming with types"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    , { name = "Software Testing"
      , role = ""
      , location = ""
      , dates = "2017 - present"
      , details =
            [ "Elements of Test-Driven Development"
            , "Python testing using Pytest, Java testing using JUnit Jupiter"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    ]


work : List Item
work =
    [ { role = "Summer Intern"
      , name = "UT Austin Summer Research Academy - College of Natural Sciences"
      , location = "Austin, TX"
      , dates = "Summer 2015, 2016"
      , details =
            [ "DNA extraction, splicing, and recombineering of the DHX35 gene using E. coli"
            , "Worked with Dr. Al Mackrell in the Vertebrate Interactome Mapping Lab"
            , "Conducted computational Flux-Balance Analysis on cyanobacteria engineered for biofuel"
            ]
      , more = Nothing
      , repo = Nothing
      , demo = Nothing
      }
    ]


activities : List FlatItem
activities =
    [ FlatItem "CSters: Women in Computer Science, Rice University" "Fall 2017 - present" Nothing
    , FlatItem "CS Club, Rice University" "Fall 2017 - present" Nothing
    , FlatItem "Society of Women Engineers (SWE), Rice University" "Fall 2017 - present" Nothing
    , FlatItem "SASE: Society of Asian Scientists and Engineers, Rice University" "Fall 2017 - present" Nothing
    , FlatItem "Club Tennis, Rice University" "Fall 2017 - present" Nothing
    , FlatItem "Music: sing, record, perform, take lessons" "2007 - present" (Just "https://goo.gl/5j6YbS")
    , FlatItem "PyLadies: Austin community of women Python programmers, team programming and presentations" "2015 - 2017" Nothing
    ]



-- ------- MAIN


main : Html a
main =
    ResumeView.view theResume
