--- cson

layout: 'default'
styles: ['/styles/contender.css']
scripts: []

---

div class:"section-container auto", "data-section":"", ->
  
  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel1", "Contender Entry"
    div class:"content ff-contender", "data-section-content":"", ->
      @partial('contender.html.coffee')
      
  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel2", "Current Card"
    div class:"content ff-card", "data-section-content":"", ->
      @partial('card.html.coffee')
      
  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel3", "Main Event"
    div class:"content ff-event", "data-section-content":"", ->
      @partial('event.html.coffee')
      
