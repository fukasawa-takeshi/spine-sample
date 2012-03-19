Spine   = require('spine')
Animal  = require('models/animal')

class Animals extends Spine.Controller
  className: 'animals'
   
  events:
    'click #showAnimals':'animalsClick'

  animalsClick: (event) ->
    Animal.fetch()
    Animal.bind "refresh", (data) =>
      @items = data[0]
      @render()

  render: ->
    @html require('views/items')(@items)

module.exports = Animals