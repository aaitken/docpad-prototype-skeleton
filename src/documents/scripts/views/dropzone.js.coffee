class APP.views.Dropzone extends Backbone.View

  constructor: ->
    @el = '#ff-dropzone'
    super()


  events:
    'dragover': 'handleDragover'
    'dragend': 'handleDragend'
    'drop': 'handleDrop'


  handleDragover: ->
    console.log 'dragover'
    @$el.addClass('ff-hover')
    return false


  handleDragend: ->
    console.log 'dragend'


  handleDrop: ->
    @file = event.dataTransfer.files[0]
    @preview()
    return false


  preview: ->
    reader = new FileReader()
    $el = @$el
    reader.onload = (event)->
      image = new Image
      image.src = event.target.result
      image.width = $el.width()
      $el.append(image)
    reader.readAsDataURL(@file)

