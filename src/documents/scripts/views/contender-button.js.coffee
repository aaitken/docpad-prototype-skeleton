class APP.views.ContenderButton extends Backbone.View

  constructor: ->
    @el = '#ff-button'
    super()


  showLatency: ->
    @$el.width(@$el.width())
    @html = @$el.html()
    @$el.html('Uploading...')
    @$el.addClass('disabled')
    setTimeout (=>
      @hide()), 2500


  hide: ->
    @$el.hide()


  show: ->
    @$el.removeClass('disabled')
    @$el.html(@html)
    @$el.show()


