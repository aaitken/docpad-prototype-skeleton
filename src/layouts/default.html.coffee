doctype 5
html ->

  head ->
    
    meta charset:"utf-8"
    title "Skeleton"

    @getBlock('styles').add([
      '/styles/vendor/normalize.css'
      '/styles/vendor/foundation.css']
      .concat(@document.styles))
      .toHTML()

  body ->

    div class:"row", ->
      
      h1 "Foodfight"
      h3 class:"subheader", "Pick a food or pick a fight"
  
      div class:"section-container auto", "data-section":"", ->
        section ->
          p class:"title", "data-section-title":"", ->
            a href:"#panel1", "Contender Entry"
          div class:"content", "data-section-content":""
        section ->
          p class:"title", "data-section-title":"", ->
            a href:"#panel2", "Current Card"
          div class:"content", "data-section-content":""
        section ->
          p class:"title", "data-section-title":"", ->
            a href:"#panel3", "Main Event"
          div class:"content", "data-section-content":""

      text(@content)

    text(@getBlock('scripts').add([
      '/scripts/vendor/modernizr-2.6.2.js'
      '/scripts/vendor/underscore-1.5.2.js'
      '/scripts/vendor/jquery-2.0.3.js'
      '/scripts/vendor/backbone-1.0.0.js'
      '/scripts/vendor/foundation-4.3.1.min.js'
      '/scripts/app.js']
      .concat(@document.scripts))
      .toHTML())
