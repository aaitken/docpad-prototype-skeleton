div class:"ff-container", ->

  p "Enter your food into the fight right here."
  
  div class:"ff-dropzone-container", ->
    div id:"ff-dropzone", class:"ff-dropzone", ->
      h5 "1. Drag yer fool picture here"
  
  div class:"ff-attribute-container", ->
    h5 "2. Title the pretender"
    input type:"text", id:"ff-title", class:"ff-title", value:""
    h5 "3. Sell that shit"
    textarea id:"ff-description", class:"ff-description", value:""
    a id:"ff-button", class:"button", "Put me on the Card"
    ul id:"ff-success-options", class:"inline-list", ->
      li ->
        a href="#", "Go to the Card"
      li ->
        a href="#", "Enter more Dogmeat"
      


