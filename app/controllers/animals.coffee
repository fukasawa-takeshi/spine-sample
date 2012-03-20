Spine   = require('spine')
Animal  = require('models/animal')

class Animals extends Spine.Controller
  className: 'animals'
  
  # イベント定義
  events:
    'click #showAnimals':'animalsClick'
  
  # ボタンをクリックされた時のハンドラ
  # JSONデータを取得して表示する
  animalsClick: (event) ->
    # データ取得
    Animal.fetch()
    # データが取得された時の処理
    Animal.bind "refresh", (data) =>
      # データをitemsに設定
      @items = data[0]
      # 描画
      @render()
  
  # view/items.ecoにデータitemsを渡して描画する
  render: ->
    @html require('views/items')(@items)

module.exports = Animals