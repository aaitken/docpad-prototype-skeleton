(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  APP.views.Contender = (function(_super) {
    __extends(Contender, _super);

    function Contender() {
      this.el = '#ff-contender';
      this.dropzone = new APP.views.ContenderDropzone();
      this.button = new APP.views.ContenderButton();
      this.successOptions = new APP.views.ContenderSuccessOptions();
      this.Entrant = APP.views.Entrant;
      Contender.__super__.constructor.call(this);
    }

    Contender.prototype.initialize = function() {
      this.titleField = this.$('#ff-title')[0];
      return this.descriptionArea = this.$('#ff-description')[0];
    };

    Contender.prototype.events = {
      'click #ff-button': 'makeContender',
      'click #ff-go-to-card': 'goToCard',
      'click #ff-enter-more-dogmeat': 'reset'
    };

    Contender.prototype.goToCard = function() {
      $('#ff-card-link').trigger('click');
      return this.reset();
    };

    Contender.prototype.makeContender = function() {
      this.makeData();
      this.button.showLatency();
      this.successOptions.resolveLatency();
      return new this.Entrant(this.data);
    };

    Contender.prototype.makeData = function() {
      return this.data = {
        imgSrc: this.dropzone.image.src,
        title: this.titleField.value,
        description: this.descriptionArea.value
      };
    };

    Contender.prototype.reset = function() {
      this.button.show();
      this.successOptions.hide();
      this.titleField.value = '';
      this.descriptionArea.value = '';
      return this.dropzone.reset();
    };

    return Contender;

  })(Backbone.View);

}).call(this);
