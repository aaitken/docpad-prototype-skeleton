doctype 5
html ->

  head ->
    
    meta charset:"utf-8"
    title "Skeleton"

    @getBlock('styles').add([
      '/styles/vendor/normalize.css'
      '/styles/vendor/foundation.css'
      '/styles/app.css']
      .concat(@document.styles))
      .toHTML()

  body ->

    div class:"row", ->
      
      h1 "FoodFight"
      #h3 class:"subheader", "Choose a food or choose a foe."
  
      text(@content)

    text(@getBlock('scripts').add([
      '/scripts/vendor/modernizr-2.6.2.js'
      '/scripts/vendor/underscore-1.5.2.js'
      '/scripts/vendor/jquery-2.0.3.js'
      '/scripts/vendor/backbone-1.0.0.js'
      '/scripts/vendor/foundation-4.3.1.min.js'
      '/scripts/namespaces.js'
      '/scripts/views/dropzone.js'
      '/scripts/views/entrant.js'
      '/scripts/app.js']
      .concat(@document.scripts))
      .toHTML())
