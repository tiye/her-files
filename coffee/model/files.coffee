
oop = require './utils/oop'
Dispatcher = require './utils/dispatcher'

files = []

module.exports = model = new Dispatcher

oop.mixin model,

  get: ->
    files

