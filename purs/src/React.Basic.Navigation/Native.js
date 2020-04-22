const { createElement } = require("react");
const { NavigationContainer } = require('@react-navigation/native');

exports.navigationContainer = children => {
  return createElement(NavigationContainer, {}, children);
}
