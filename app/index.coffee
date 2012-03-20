require('lib/setup')

Spine   = require('spine')
Animals = require('controllers/animals')

class App extends Spine.Controller
  # 最初に呼び出されるメソッド
  constructor: ->
    # 親クラスのconstructorを呼び出す
    super
    # Animals Controllerのインスタンスを生成 #animalsSection に紐付ける
    @animals = new Animals(el: $('#animalSection'))
    		
module.exports = App

