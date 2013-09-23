$(document).foundation()

APP.views.contender = new APP.views.Contender()
$('.ff-entrant').each ->
  new APP.views.Entrant({el: this})
