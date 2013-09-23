(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  APP.views.Contender = (function(_super) {
    __extends(Contender, _super);

    function Contender() {
      this.el = '#ff-contender';
      this.dropzone = new APP.views.ContenderDropzone();
      this.Entrant = APP.views.Entrant;
      Contender.__super__.constructor.call(this);
    }

    Contender.prototype.initialize = function() {
      this.titleField = this.$('#ff-title')[0];
      this.descriptionArea = this.$('#ff-description')[0];
      return this.button = $('#ff-button');
    };

    Contender.prototype.events = {
      'click #ff-button': 'makeContender'
    };

    Contender.prototype.makeContender = function() {
      this.makeData();
      return new this.Entrant(this.data);
    };

    Contender.prototype.makeData = function() {
      return this.data = {
        imgSrc: this.dropzone.image.src,
        title: this.titleField.value,
        description: this.descriptionArea.value
      };
    };

    return Contender;

  })(Backbone.View);

}).call(this);
