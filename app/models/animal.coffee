Spine = require("spine")

class Animal extends Spine.Model
  # モデルの先頭で設定する モデル名、モデルの持つプロパティ１、モデルの持つプロパティ２…
  @configure "Animal", "name"
  
  # Ajaxクラスを継承
  @extend Spine.Model.Ajax
  
  # 取得URLを指定
  @url: "/data.json"
  
module.exports = Animal