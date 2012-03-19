Spine   = require('spine')
Animal  = require('models/animal')

class Animals extends Spine.Controller
  className: 'animals'
  
  # イベントを定義する
  events:
    'click #showAnimals':'animalsClick'
  
  # ボタンをクリックされた時のハンドラ
  # JSONデータを取得して表示する
  animalsClick: (event) ->
    # データ取得
    Animal.fetch()
    # データが取得された時の処理
    Animal.bind "refresh", (data) =>
      @items = data[0]
      @render()

  render: ->
    @html require('views/items')(@items)

module.exports = Animals