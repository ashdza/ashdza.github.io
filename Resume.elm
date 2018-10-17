module Resume exposing (theResume)

import ResumeTypes exposing (..)
import ResumeView exposing (view)
import Html exposing (..)


-- ----- DATA ---


theResume : Resume
theResume =
    { header = header
    , body =
        -- FlatSection "Why Spotify?" whySpotify
        [ NestedSection "Education" education
        , NestedSection "Conference Presentations" awards
        , NestedSection "Projects" projects
        , NestedSection "Software Development Skills" programming
        , NestedSection "Work Experience" work
        , FlatSection "Organizations and Activities" activities
        ]
    }


whySpotify : List FlatItem
whySpotify =
    [ FlatItem "As a longtime musician and singer, I actively record, perform, and take lessons"
        ""
        []
    , FlatItem "As a CS major and musician, I am building a full-stack web-based musician's feedback service" "" []
    , FlatItem "I love Spotify and have been an avid daily user for many years" "" []
    ]


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
      , dates = "2017 - present"
      , role = ""
      , details =
            [ "Computer Science, graduating May 2021, GPA: 3.21"
            ]
      , links = []
      }
    , { name = "Westwood High School"
      , location = "Austin, TX"
      , dates = "2013 - 2017"
      , role = ""
      , details =
            [ "GPA: 4.0/4.0 (5.58/5.0 weighted), National Merit Scholar, Graduated May 2017"
            ]
      , links = []
      }
    ]


awards : List Item
awards =
    [ { name = "PyoFuel: Using Python and Pathway Tools to engineer synthetic biofuel"
      , role = "Sole Author"
      , location = "Colorado"
      , dates = "Dec 2016"
      , details =
            [ "Int'l. Soc. for Computational Biology / 2016 Rocky Mountain Bioinformatics Conference (poster session)"
            ]
      , links = [ More "https://www.iscb.org/cms_addon/conferences/rocky2016/track/posters.php#P19" ]
      }
    ]


projects : List Item
projects =
    [ { name = "Lentil - A Musician's Feedback Service"
      , role = "Independent Project"
      , location = ""
      , dates = "Summer 2018 - present"
      , details =
            [ "Design and implement web-based musician feedback service (ReasonML, React, GraphQL, Postgres)"
            , "Musicians submit recordings of performances and receive pointed feedback from others"
              -- , "Front-end is ReasonML + React, back-end is Hasura's GraphQL server + Postgres database"
            ]
      , links = [ Repo "https://github.com/ashdza/lentil", Demo "https://lentil.7insights.com/" ]
      }
    , { name = "Physics Sunset"
      , role = "Independent Project"
      , location = ""
      , dates = "Summer 2017"
      , details =
            [ "Design and implement browser-based interactive graphical simulation of a physics problem (ReasonML)"
            ]
      , links = [ Repo "https://github.com/ashdza/physics-sunset", Demo "https://physics.7insights.com/public/index.html" ]
      }
    , { name = "Disease Transmission Analysis"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Design and implement rooted-directed minimal spanning tree algorithm (Python)"
            , "Analyze genetic + epidemiological data from 2011 disease outbreak to infer the disease transmission tree"
            ]
      , links = []
      }
    , { name = "DNA Sequence Alignment"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Design and implement DP solutions to two DNA sequence alignment problems (Python)"
            , "Align human and fruit-fly protein sequences to identify the PAX domain within the \"eyeless\" gene"
            ]
      , links = []
      }
    , { name = "Phylogenetic (Evolutionary) Trees"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Infer evolutionary tree, given DNA sequences for leaf taxa and plausible mutations (Python)"
            ]
      , links = []
      }
    , { name = "Hidden Markov Models and Part-of-Speech Tagging"
      , role = ""
      , location = ""
      , dates = "Spring 2018"
      , details =
            [ "Implement statistical learning of HMM using training corpus of pre-tagged sentences (Python)"
            , "Implement Viterbi algorithm to assign part-of-speech tags to new sentences using trained HMM"
            ]
      , links = []
      }
    , { name = "Chef Arduino"
      , role = "Independent Project"
      , location = ""
      , dates = "2010 - 2011"
      , details =
            [ "Conceive, design, build, and program an Arduino-based robot to test properties of food samples"
            ]
      , links = [ Repo "https://github.com/ashdza/chef_arduino" ]
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
            , "Basic: C, Racket, Pyret, Elm, Html, Numpy, Hasura's Postgres + GraphQL"
            ]
      , links = []
      }
    , { name = "Software Design"
      , role = ""
      , location = ""
      , dates = "2013 - present"
      , details =
            [ "Systematic Program Design - Designing Data & Functions, EdX course based on HtDP2"
            , "Basics of functional programming with types"
            ]
      , links = []
      }
    , { name = "Software Testing"
      , role = ""
      , location = ""
      , dates = "2017 - present"
      , details =
            [ "Test-driven development, unit-tests, property-based tests"
            , "Python testing using Pytest, Java testing using JUnit 5 & QuickTheories"
            ]
      , links = []
      }
    ]


work : List Item
work =
    [ { role = "Summer Intern"
      , name = "UT Austin Summer Research Academy - College of Natural Sciences"
      , location = "Austin, TX"
      , dates = "2015, 2016"
      , details =
            [ "DNA extraction, splicing, and recombineering of the DHX35 gene using E. coli"
            , "Worked with Dr. Al Mackrell in the Vertebrate Interactome Mapping Lab"
            , "Conducted computational Flux Balance Analysis on cyanobacteria engineered for biofuel"
            ]
      , links = []
      }
    ]


activities : List FlatItem
activities =
    [ FlatItem "CSters: Women in Computer Science, Rice University" "2017 - present" []
    , FlatItem "CS Club, Rice University" "2017 - present" []
    , FlatItem "Society of Women Engineers (SWE), Rice University" "2017 - present" []
    , FlatItem "SASE: Society of Asian Scientists and Engineers, Rice University" "2017 - present" []
    , FlatItem "Club Tennis, Rice University" "2017 - present" []
    , FlatItem "Music: sing, record, perform, take lessons"
        "2007 - present"
        [ Link "soundcloud" "https://goo.gl/kba2Mk", Link "youtube" "https://www.youtube.com/channel/UCJpR2rFKMPgG8Ezc2c0u6pA/videos" ]
    , FlatItem "PyLadies: Austin community of women Python programmers, team programming, presentations" "2015 - 2017" []
    ]



-- ------- MAIN


main : Html a
main =
    ResumeView.view theResume
