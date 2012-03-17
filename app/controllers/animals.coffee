Spine   = require('spine')
Animal  = require('models/animal')
Manager = require('spine/lib/manager')

class Animals extends Spine.Controller
  className: 'animals'
  
  events:
    'click #getjson':'getjsonClick'
  
  getjsonClick: (event) ->
    #alert 'hogeta'
    Animal.fetch()
    Animal.bind "refresh", (data) =>
      @items = data[0]
      @render()

  render: ->
    @html require('views/specs')(@items)

module.exports = Animals