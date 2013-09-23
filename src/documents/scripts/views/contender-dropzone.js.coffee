class APP.views.ContenderDropzone extends Backbone.View

  constructor: ->
    @el = '#ff-dropzone'
    super()

  
  initialize: ->
    @html = @$el.html()
  
    
  events:
    'dragover': 'handleDragover'
    'dragend': 'handleDragend'
    'drop': 'handleDrop'


  handleDragover: ->
    @$el.addClass('ff-hover')
    return false


  handleDragend: ->
    #console.log 'dragend'


  handleDrop: ->
    @file = event.dataTransfer.files[0]
    @preview()
    return false


  preview: ->
    reader = new FileReader()
    reader.onload = (event)=>
      @image = new Image()
      @image.src = event.target.result
      @$el.html(@image)
    reader.readAsDataURL(@file)


  reset: ->
    @$el.removeClass('ff-hover')
    @$el.html(@html)

