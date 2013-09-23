class APP.views.Entrant extends Backbone.View

  constructor: (data = {})->
    if data.el
      @el = data.el
    else
      @className = 'ff-entrant'
    @data = data
    super()

  
  events:
    'click .success': 'lunch'
    'click .alert': 'launch'
   

  launch: ->
    $launchButton = @$('.alert')
    $('#myModal img').attr('src', @$('img').attr('src'))
    #$launchButton.width($launchButton.width())
    setTimeout (->
      $launchButton.html('launched')
      $launchButton.addClass('disabled')), 1000


  lunch: ->
    $lunchButton = @$('.success')
    if ! $lunchButton.hasClass('disabled')
      $lunchButton.width($lunchButton.width())
      $lunchButton.html(Math.floor((Math.random()*50)+1))
      $lunchButton.addClass('disabled')
      
      
  render: ->
    @$el.html """
      <div class="ff-image-container">
        <img src="#{@data.imgSrc}">
      </div>
      <div class="ff-image-relatives">
        <h6>#{@data.title}</h6>
        <p>#{@data.description}</p>
        <a class="button small success ff-lunch">lunch it</a>
        <a data-reveal-id="myModal" class="button small alert ff-lunch">launch it</a>
      </div> """
    @$el.prependTo('#ff-entrants')



