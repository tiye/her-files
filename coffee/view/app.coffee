
React = require 'react'

module.exports = React.createClass
  displayName: 'app'

  render: ->
    $.div {}, 'hello world!'