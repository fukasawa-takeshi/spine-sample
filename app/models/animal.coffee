Spine = require("spine")

class Animal extends Spine.Model
  @configure "Animal", "name"

  @extend Spine.Model.Ajax
  
  @url: "/data.json"
  
module.exports = Animal