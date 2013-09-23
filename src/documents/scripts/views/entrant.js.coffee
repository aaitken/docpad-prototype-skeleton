class APP.views.Entrant extends Backbone.View

  constructor: (data = {})->
    if data.el
      @el = data.el
    else
      @className = 'ff-entrant'
    @data = data
    super()

  
  events:
    'click .success': -> alert 'lunch'
   

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



