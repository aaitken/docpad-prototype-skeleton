class APP.views.Contender extends Backbone.View

  constructor: ->
    @el = '#ff-contender'
    @dropzone = new APP.views.ContenderDropzone()
    @Entrant = APP.views.Entrant
    super()


  initialize: ->
    @titleField = @$('#ff-title')[0]
    @descriptionArea = @$('#ff-description')[0]
    @button = $('#ff-button')


  events:
    'click #ff-button': 'makeContender'


  makeContender: ->
    @makeData()
    new @Entrant(@data)


  makeData: ->
    @data = {
      imgSrc: @dropzone.image.src
      title: @titleField.value
      description: @descriptionArea.value}


    
