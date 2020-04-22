const { createElement } = require("react");
const { createBottomTabNavigator } = require('@react-navigation/bottom-tabs');

exports.createBottomTabNavigator = () => {
  const navigator = createBottomTabNavigator();
  navigator.navigator = children => createElement(navigator.Navigator, {}, children);
  navigator.screen = props => createElement(navigator.Screen, props);
  return navigator;
};
