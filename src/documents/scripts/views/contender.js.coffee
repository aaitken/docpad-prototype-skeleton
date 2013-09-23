class APP.views.Contender extends Backbone.View

  constructor: ->
    @el = '#ff-contender'
    @dropzone = new APP.views.ContenderDropzone()
    @button = new APP.views.ContenderButton()
    @successOptions = new APP.views.ContenderSuccessOptions()
    @Entrant = APP.views.Entrant
    super()


  initialize: ->
    @titleField = @$('#ff-title')[0]
    @descriptionArea = @$('#ff-description')[0]


  events:
    'click #ff-button': 'makeContender'
    'click #ff-go-to-card': 'goToCard'
    'click #ff-enter-more-dogmeat': 'reset'


  goToCard: ->
    $('#ff-card-link').trigger('click')
    @reset()

 
  makeContender: ->
    @makeData()
    @button.showLatency()
    @successOptions.resolveLatency()
    new @Entrant(@data)


  makeData: ->
    @data = {
      imgSrc: @dropzone.image.src
      title: @titleField.value
      description: @descriptionArea.value}


  reset: ->
    @button.show()
    @successOptions.hide()
    @titleField.value = ''
    @descriptionArea.value = ''
    @dropzone.reset()
