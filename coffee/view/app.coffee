
React = require 'react'
files = require '../model/files'
mixins = require '../utils/mixins'

FileItem = require './file'

module.exports = React.createClass
  displayName: 'app'
  mixins: [mixins.listenTo]

  getInitialState: ->
    files: files.get()
    point: 0

  componentDidMount: ->
    @listenTo files, @_onChange
    window.addEventListener 'keydown', (event) =>
      step = 10
      if event.keyCode is 38
        @setState point: @state.point - step
      else if event.keyCode is 40
        @setState point: @state.point + step

  _onChange: ->
    @setState files: files.get()

  render: ->
    filesList = @state.files.map (file) =>
      FileItem key: file.id, text: file.text, point: @state.point
    $.div
      id: 'app'
      filesList