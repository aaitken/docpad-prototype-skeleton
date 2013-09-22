--- cson

layout: 'default'
styles: ['/styles/pages/home.css']
scripts: []

---

div class:"section-container auto", "data-section":"", ->
  
  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel1", "Contender Entry"
    div class:"content", "data-section-content":"", ->
      @partial('contender.html.coffee')
      
  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel2", "Current Card"
    div class:"content", "data-section-content":"", ->
      @partial('card.html.coffee')
      
  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel3", "Main Event"
    div class:"content", "data-section-content":"", ->
      @partial('event.html.coffee')
      
