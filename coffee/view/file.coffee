
React = require 'react'

module.exports = React.createClass
  displayName: 'file-item'

  render: ->
    distance = @props.text * 10 - 100 - @props.point
    $.div
      className: 'file-item'
      style:
        'transform': "translate3d(0px,0px,#{distance}px)"
      @props.text