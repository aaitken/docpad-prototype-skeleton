(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  APP.views.ContenderDropzone = (function(_super) {
    __extends(ContenderDropzone, _super);

    function ContenderDropzone() {
      this.el = '#ff-dropzone';
      ContenderDropzone.__super__.constructor.call(this);
    }

    ContenderDropzone.prototype.initialize = function() {
      return this.html = this.$el.html();
    };

    ContenderDropzone.prototype.events = {
      'dragover': 'handleDragover',
      'dragend': 'handleDragend',
      'drop': 'handleDrop'
    };

    ContenderDropzone.prototype.handleDragover = function() {
      this.$el.addClass('ff-hover');
      return false;
    };

    ContenderDropzone.prototype.handleDragend = function() {};

    ContenderDropzone.prototype.handleDrop = function() {
      this.file = event.dataTransfer.files[0];
      this.preview();
      return false;
    };

    ContenderDropzone.prototype.preview = function() {
      var reader,
        _this = this;
      reader = new FileReader();
      reader.onload = function(event) {
        _this.image = new Image();
        _this.image.src = event.target.result;
        return _this.$el.html(_this.image);
      };
      return reader.readAsDataURL(this.file);
    };

    ContenderDropzone.prototype.reset = function() {
      this.$el.removeClass('ff-hover');
      return this.$el.html(this.html);
    };

    return ContenderDropzone;

  })(Backbone.View);

}).call(this);
