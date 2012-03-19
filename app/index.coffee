require('lib/setup')

Spine   = require('spine')
Animals = require('controllers/animals')
$       = Spine.$

class App extends Spine.Controller
  constructor: ->
    super
    @animals = new Animals(el: $('#animalSection'))
    		
module.exports = App
    
