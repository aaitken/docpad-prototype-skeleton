--- cson

layout: 'default'
styles: [
  '/styles/contender.css'
  '/styles/card.css']
scripts: []
entrants: [
  {picture: "/images/mix.jpeg", title: "Variety Mix", description:"I'm sick of gronola for breakfast. Let's get this french fry/wasabi pea/peanut mix in da house."}
  {picture: "/images/jim-beam.jpg", title: "Beam", description: "Devil's Cut, the newest bourbon from Jim Beam, offers a rich, full-flavored bourbon experience for those seeking a new way to enjoy bourbon."}
  {picture: "/images/jack-daniels.jpg", title: "Jack", description: "Black Jack"}
  {picture: "/images/gummies.jpeg", title: "Gummies", description:""}
  {picture: "/images/cheetos-girl-in-bath.jpg", title: "Cheetos", description:"...but just the Cheetos."}
  {picture: "/images/fruit.jpeg", title: "Fruit", description:"I mean, we gotta... Right?"}
  
  ]

---

div class:"section-container auto", "data-section":"", ->
  
  section ->
    p class:"title", "data-section-title":"", ->
      a id:"ff-card-link", href:"#panel1", "Current Card"
    div id:"ff-card", class:"content ff-card", "data-section-content":"", ->
      @partial('card.html.coffee')

  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel2", "Contender Entry"
    div id:"ff-contender", class:"content ff-contender", "data-section-content":"", ->
      @partial('contender.html.coffee')
      
  section ->
    p class:"title", "data-section-title":"", ->
      a href:"#panel3", "Main Event"
    div id:"ff-event", class:"content ff-event", "data-section-content":"", ->
      @partial('event.html.coffee')
      
