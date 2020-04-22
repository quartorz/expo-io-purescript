module React.Basic.Navigation.BottomTabs where

import Prelude
import React.Basic (JSX)

type BottomTabNavigator
  = { navigator :: Array JSX -> JSX
    , screen :: forall r. { name :: String, component :: Record r -> JSX } -> JSX
    }

foreign import createBottomTabNavigator :: Unit -> BottomTabNavigator
