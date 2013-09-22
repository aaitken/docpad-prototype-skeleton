div class:"ff-container", ->

  p "Enter your food into the fight right here."
  
  div class:"ff-dropzone-container", ->
    div id:"ff-dropzone", class:"ff-dropzone", ->
      h5 "1. Drag yer fool picture here"
  
  div class:"ff-attribute-container", ->
    h5 "2. Title your pretender"
    input type:"text", class:"ff-title"
    h5 "3. Sell that shit"
    textarea class:"ff-description"
    a class:"button", "Put me on the Card"


