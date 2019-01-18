module Resume exposing (theResume)

import ResumeTypes exposing (..)
import ResumeView exposing (view)
import Html exposing (..)


-- ----- DATA ---


theResume : Resume
theResume =
    { header = header
    , body =
        -- [ FlatSection "Why Spotify?" whySpotify
        [ NestedSection "Education" education
        , NestedSection "Work Experience" work
        , NestedSection "Conference Presentations" awards
        , NestedSection "Software Development Skills" programming
        , NestedSection "Projects" projects
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
    , phone = "512-228-4140"
    , links =
        [ { name = "Home", url = "https://ashdza.github.io" }
        , { name = "Blog", url = "https://ashdza.github.io/blog/" }
        , { name = "Github", url = "https://github.com/ashdza" }
        , { name = "LinkedIn", url = "https://goo.gl/58fLVD" }
        ]
    }


education : List Item
education =
    [ { name = "Rice University"
      , location = "Houston, TX"
      , dates = "2017 - present"
      , role = ""
      , details =
            [ "BS Computer Science & BA Cognitive Science, graduating May 2021, GPA: 3.40"
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
    [ { name = "Lentil - A Web-Based Musician's Feedback Service"
      , role = "Independent Project"
      , location = ""
      , dates = "2018 - present"
      , details =
            [ "Musicians submit performances and receive pointed feedback from others (ReasonML, React, Postgres)"
              -- , "Front-end is ReasonML + React, back-end is Hasura's GraphQL server + Postgres database"
            ]
      , links = [ Repo "https://github.com/ashdza/lentil", Demo "https://lentil.7insights.com/" ]
      }
    , { name = "Physics Sunset"
      , role = "Independent Project"
      , location = ""
      , dates = "2017"
      , details =
            [ "Design and implement a browser-based interactive graphical simulation of a physics problem (ReasonML)"
            ]
      , links = [ Repo "https://github.com/ashdza/physics-sunset", Demo "https://physics.7insights.com/" ]
      }
    , { name = "Disease Transmission Analysis from Outbreak Data"
      , role = ""
      , location = ""
      , dates = "2018"
      , details =
            [ "Infer disease transmission tree from disease outbreak genetic + epidemiological data using RDMST (Python)"
            ]
      , links = []
      }
    , { name = "DNA Sequence Alignment"
      , role = ""
      , location = ""
      , dates = "2018"
      , details =
            [ "Design and implement dynamic programming solutions to DNA sequence alignment problems (Python)"
            , "Align human and fruit-fly protein sequences to identify the PAX domain within the \"eyeless\" gene"
            ]
      , links = []
      }
    , { name = "Phylogenetic (Evolutionary) Trees"
      , role = ""
      , location = ""
      , dates = "2018"
      , details =
            [ "Infer evolutionary tree, given DNA sequences for leaf taxa and plausible mutations (Python)"
            ]
      , links = []
      }
    , { name = "Hidden Markov Models and Part-of-Speech Tagging (NLP)"
      , role = ""
      , location = ""
      , dates = "2018"
      , details =
            [ "Implement statistical learning of HMM using training corpus of pre-tagged sentences (Python)"
            , "Implement Viterbi algorithm to assign part-of-speech tags to new sentences using trained HMM"
            ]
      , links = []
      }
    , { name = "Impact of Language on Perception"
      , role = "Independent Project"
      , location = ""
      , dates = "2016"
      , details =
            [ "Analyzed the Sapir-Whorf Hypothesis and its implications in multiple perceptual categories"
            ]
      , links = [ Repo "https://github.com/ashdza/Impact-of-Language-on-Perception" ]
      }
    , { name = "Chef Arduino"
      , role = "Independent Project"
      , location = ""
      , dates = "2011"
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
            , "Basic: C, Racket, Pyret, Elm, Html, Hasura's Postgres + GraphQL"
            ]
      , links = []
      }
    , { name = "Software Design"
      , role = ""
      , location = ""
      , dates = "2013 - present"
      , details =
            [ "Systematic Program Design - Designing Data & Functions, EdX course based on HtDP2"
            , "Typed functional programming, Object-Oriented Design"
            ]
      , links = []
      }
    , { name = "Software Testing"
      , role = ""
      , location = ""
      , dates = "2017 - present"
      , details =
            [ "Test-driven development, unit & property-based tests, Python: Pytest, Java: JUnit 5 & QuickTheories"
            ]
      , links = []
      }
    ]


work : List Item
work =
    [ { role = "Research Assistant"
      , name = "Rice University, T.L.L. Temple Neuroplasticity Laboratory"
      , location = "Houston, TX"
      , dates = "2019-present"
      , details =
            [ "Computational neuroscience project studying speech vs. non-speech perception"
            ]
      , links = []
      }
    , { role = "Summer Research Intern"
      , name = "UT Austin, College of Natural Sciences, Vertebrate Interactome Lab"
      , location = "Austin, TX"
      , dates = "2016"
      , details =
            [ "DNA recombineering of DHX35 gene in E. coli, and computational Flux Balance Analysis on cyanobacteria"
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
