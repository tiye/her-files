
oop = require '../utils/oop'
Dispatcher = require '../utils/dispatcher'

files = []

module.exports = model = new Dispatcher

oop.mixin model,

  get: ->
    files

  init: ->
    for i in [1..20]
      files.push text: i, id: i