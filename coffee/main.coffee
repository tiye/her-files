
React = require 'react'

require './utils/extend'
files = require './model/files'

files.init()

AppComp = require './view/app'

React.renderComponent (AppComp {}), document.body