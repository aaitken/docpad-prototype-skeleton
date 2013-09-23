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
    'click .alert': -> alert 'launch'
   

  render: ->
    @$el.html """
      <div class="ff-image-container">
        <img src="#{@data.imgSrc}">
      </div>
      <div class="ff-image-relatives">
        <h6>#{@data.title}</h6>
        <p>#{@data.description}</p>
        <a class="button small success ff-lunch">lunch it</a>
        <a class="button small alert ff-lunch">launch it</a>
      </div> """
    @$el.prependTo('#ff-entrants')



