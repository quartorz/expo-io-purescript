module App where

import Prelude

import Home (home)
import React.Basic (JSX)
import React.Basic.Navigation.BottomTabs (BottomTabNavigator, createBottomTabNavigator)
import React.Basic.Navigation.Native (navigationContainer)
import Settings (settings)


tab :: BottomTabNavigator
tab = createBottomTabNavigator unit

app :: forall r. Record r -> JSX
app _ =
  navigationContainer
    [ tab.navigator
        [ tab.screen { name: "Home", component: home }
        , tab.screen { name: "Settings", component: settings }
        ]
    ]
