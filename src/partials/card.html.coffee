div class:"ff-container", ->
  #h5 "latest"

  dl class:"sub-nav", ->
    dt "View By:"
    dd class:"active", ->
      a href:"#", "Most Recent"
    dd ->
      a href:"#", "Most Lunched"
    dd ->
      a href:"#", "Most Launched"

  for entrant in @document.entrants

    div class:"ff-entrant", ->
      div class:"ff-image-container", ->
        img src:"#{entrant.picture}"
      div class:"ff-image-relatives", ->
        h6 "#{entrant.title}"
        p "#{entrant.description}"
        a class:"button small success ff-lunch", "lunch it"
        a class:"button small alert ff-launch", "launch it"
