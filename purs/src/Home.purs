module Home where

import Prelude
import React.Basic (Component, JSX, createComponent, make)
import React.Basic.DOM (css)
import React.Basic.Native as RN
import React.Basic.Native.Events (capture_)

component :: Component {}
component = createComponent "Home"

home :: {} -> JSX
home = make component { initialState, render }
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
              , children: [ RN.string "Home" ]
              }
          , RN.button
              { onPress: capture_ $ self.setState \s -> s { counter = s.counter + 1 }
              , title: ("Counter: " <> show self.state.counter)
              }
          ]
      }
