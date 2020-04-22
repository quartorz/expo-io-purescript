module Settings where

import React.Basic (Component, JSX, createComponent, make)
import React.Basic.DOM (css)
import React.Basic.Native as RN

component :: Component {}
component = createComponent "Home"

settings :: {} -> JSX
settings = make component { initialState, render }
  where
  initialState = { counter: 0 }

  render self =
    RN.safeAreaView
      { style:
          css
            { flex: 1
            , justifyContent: "center"
            , alignItems: "center"
            }
      , children:
          [ RN.text
              { style: css { fontSize: 20 }
              , children: [ RN.string "Settings" ]
              }
          ]
      }
