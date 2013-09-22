(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  APP.views.Dropzone = (function(_super) {
    __extends(Dropzone, _super);

    function Dropzone() {
      this.el = '#ff-dropzone';
      Dropzone.__super__.constructor.call(this);
    }

    Dropzone.prototype.events = {
      'dragover': 'handleDragover',
      'dragend': 'handleDragend',
      'drop': 'handleDrop'
    };

    Dropzone.prototype.handleDragover = function() {
      console.log('dragover');
      this.$el.addClass('ff-hover');
      return false;
    };

    Dropzone.prototype.handleDragend = function() {
      return console.log('dragend');
    };

    Dropzone.prototype.handleDrop = function() {
      this.file = event.dataTransfer.files[0];
      this.preview();
      return false;
    };

    Dropzone.prototype.preview = function() {
      var $el, reader;
      reader = new FileReader();
      $el = this.$el;
      reader.onload = function(event) {
        var image;
        image = new Image;
        image.src = event.target.result;
        image.width = $el.width();
        return $el.append(image);
      };
      return reader.readAsDataURL(this.file);
    };

    return Dropzone;

  })(Backbone.View);

}).call(this);
