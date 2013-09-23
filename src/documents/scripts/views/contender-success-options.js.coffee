class APP.views.ContenderSuccessOptions extends Backbone.View

  constructor: ->
    @el = '#ff-success-options'
    super()


  hide: ->
    @$el.hide()


  resolveLatency: ->
    setTimeout (=>
      @show()), 2500

    
  show: ->
    @$el.show()
