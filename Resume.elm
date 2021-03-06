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
        , NestedSection "Work Experience" work
        , NestedSection "Software Development Skills" skills
        , NestedSection "Projects" projects
        , NestedSection "Awards" awards
        , FlatSection "Leadership and Activities" activities
        ]
    }

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
        , { name = "Github", url = "https://github.com/ashdza?tab=repositories" }
        , { name = "LinkedIn", url = "https://goo.gl/58fLVD" }
        ]
    }


education : List Item
education =
    [ { name = "Rice University"
      , location = "Houston, TX"
      , dates = "Aug 2017 - May 2021"
      , role = ""
      , details =
            [ "BA Computer Science, GPA: 3.6/4.0"
            ]
      , links = []
      }
    , {
        name = "Relevant Coursework"
        , location = ""
        , dates = ""
        , role = ""
        , details = ["Algorithms, Operating Systems, Databases, Parallel Programming, Functional Programming, Computer Engineering, (upcoming) Machine Learning"]
        , links = []
      }
    ]


work : List Item
work =
    [ {
       role = "Software Engineering Intern - Monetization Backend"
       , name = "HubSpot"
       , location = "Remote"
       , dates = "Summer 2020"
       , details = ["Ownership of revenue generation project for startup market, driving discussions with multiple teams", 
       "Developed backend Java application to connect business development team to startup customers",
       "Designed & deployed multiple APIs and clients with unit, integration & acceptance tests", 
       "Developed databases by defining schema, data access objects & automated jobs using SQL and Java"
       ]
       , links = []
    }
    ,
      { role = "Backend Development Intern - Biglearn/Tutor"
      , name = "OpenStax"
      , location = "Houston, TX"
      , dates = "Summer 2019"
      , details =
            [ "Built Rails application with automated testing for endpoints, impacting 4,000 students/semester"
            , "Transitioned database to AWS Aurora Serverless for scalability with load-testing & autoscaling"
            , "Worked in intern team to build & pitch new note-taking app to investors using Google API"
            ]
      , links = []
      }
    , { role = "Teaching Assistant"
      , name = "Rice University, Dept. of Computer Science"
      , location = "Houston, TX"
      , dates = "Fall 2019"
      , details =
            [ "TA for Algorithms II: led office hours and discussion of labs, homework, and exams"
            ]
      , links = []
      }
    ]


skills : List Item
skills =
    [ { name = "Programming Languages & Frameworks"
      , role = ""
      , location = ""
      , dates = ""
      , details =
            [ "Proficient: Python, Java, C, SQL, Ruby on Rails, Git, Linux, AWS"
            , "Basic: Elm, JavaScript, HTML, React, ReasonML/OCaml, Hasura's Postgres + GraphQL"
            ]
      , links = []
      }
    ]


awards : List Item
awards =
    [ { name = "Rewriting the Code"
      , role = "Fellow"
      , location = "US/Canada"
      , dates = "2019 - present"
      , details =
            [ "US/Canada-wide competitive award for females in CS: coaching, networking educational programming"
            ]
      , links = [ More "https://rewritingthecode.org/fellowship/" ]
      }
    -- , { name = "PyoFuel: Using Python and Pathway Tools to engineer synthetic biofuel"
    --   , role = "Sole Author"
    --   , location = "Colorado"
    --   , dates = "Dec 2016"
    --   , details =
    --         [ "Accepted for 2016 Rocky Mountain Bioinformatics Conference (poster session)"
    --         ]
    --   , links = [ More "https://github.com/ashdza/pyofuel/blob/master/Rocky-2016-ICSB-Poster.pdf" ]
    --   }
    ]


projects : List Item
projects =
    [ { name = "Lentil - A Web-Based Musician's Feedback Service"
      , role = "Independent Project"
      , location = ""
      , dates = "2018 - present"
      , details =
            -- [ "Musicians submit performances and receive pointed feedback from others (ReasonML, React, Postgres)"
            [ "Develop full-stack application for use by musicians and teachers (ReasonML, React, Postgres)"
            , " Musicians submit recordings and receive feedback on specific points in recording"
              -- , "Front-end is ReasonML + React, back-end is Hasura's GraphQL server + Postgres database"
            ]
      , links = [ Repo "https://github.com/ashdza/lentil", Demo "https://lentil.7insights.com/" ]
      }
    , {
        name = "NBA 3-Point Data Analysis"
        , role = ""
        , location = ""
        , dates = "2020"
        , details = 
            [ "Designed & implemented program to determine which teams would benefit most by moving 3-point line (SQL)"
              , "Processed over 20,000 rows of historical player and game statistics from NBA database"
            ]
        , links = []
    }  
    , { name = "Hidden Markov Models and Part-of-Speech Tagging (NLP)"
      , role = ""
      , location = ""
      , dates = "2018"
      , details =
            [ "Built model that assigns part-of-speech tags to words in input text (Python)"
            , "Implemented statistical learning of hidden Markov model using training set of pre-tagged sentences"
            ]
      , links = []
      }
      , { name = "Physics Sunset"
      , role = "Independent Project"
      , location = ""
      , dates = "2017"
      , details =
            [ "Designed and implemented browser-based interactive graphical simulation of physics problem (ReasonML)"
            ]
      , links = [ Repo "https://github.com/ashdza/physics-sunset", Demo "https://physics.7insights.com/public" ]
      }
    ]


activities : List FlatItem
activities =
    [ FlatItem "Public Relations Director & member of Club Tennis, Rice University" "2017 - present" []
     , FlatItem "CSters (Women in Computer Science) and CS Club, Rice University" "2017 - present" []
    -- , FlatItem "CS Club, Rice University" "2017 - present" []
    , FlatItem "Music: sing, record, perform, take lessons"
        "2007 - present"
        [ Link "soundcloud" "https://goo.gl/kba2Mk", Link "youtube" "https://www.youtube.com/channel/UCJpR2rFKMPgG8Ezc2c0u6pA/videos" ]
      -- , FlatItem "PyLadies: Austin community of women Python programmers, team programming, presentations" "2015 - 2017" []
    ]



-- ------- MAIN


main : Html a
main =
    ResumeView.view theResume
