require('lib/setup')

Spine   = require('spine')
Animals = require('controllers/animals')

class App extends Spine.Controller
  constructor: ->
    super
    @log('こんにちわ！')
    @animals = new Animals(el: $('#hello'))
    @append @animals
    		
module.exports = App
    
