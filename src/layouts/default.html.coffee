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

    div id:"myModal", class:"reveal-modal small", ->
      h2 "Launch That Shit"
      form class:"custom", ->
        p "Send"
        img src:""
        p "At"
        input type:"text"
        p "Optionally telling him/her to"
        textarea()
        label for:"radio1", ->
          input name:"radio1", type:"radio", id:"radio1", style:"display:none;", CHECKED:""
          span class:"custom radio checked"
          text "Remain anonymous"
        label for:"radio1", ->
          input name:"radio1", type:"radio", id:"radio1", style:"display:none;"
          span class:"custom radio"
          text "Reveal your intent"
        button class:"large button alert", "Fire!"

    text(@getBlock('scripts').add([
      '/scripts/vendor/modernizr-2.6.2.js'
      '/scripts/vendor/underscore-1.5.2.js'
      '/scripts/vendor/jquery-2.0.3.js'
      '/scripts/vendor/backbone-1.0.0.js'
      '/scripts/vendor/foundation-4.3.1.min.js'
      '/scripts/namespaces.js'
      '/scripts/views/contender.js'
      '/scripts/views/contender-dropzone.js'
      '/scripts/views/contender-button.js'
      '/scripts/views/contender-success-options.js'
      '/scripts/views/entrant.js'
      '/scripts/app.js']
      .concat(@document.scripts))
      .toHTML())
