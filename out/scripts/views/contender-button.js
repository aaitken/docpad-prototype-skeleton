(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  APP.views.ContenderButton = (function(_super) {
    __extends(ContenderButton, _super);

    function ContenderButton() {
      this.el = '#ff-button';
      ContenderButton.__super__.constructor.call(this);
    }

    ContenderButton.prototype.showLatency = function() {
      var _this = this;
      this.$el.width(this.$el.width());
      this.$el.html('Uploading...');
      this.$el.addClass('disabled');
      return setTimeout((function() {
        return _this.hide();
      }), 2500);
    };

    ContenderButton.prototype.hide = function() {
      return this.$el.hide();
    };

    ContenderButton.prototype.show = function() {
      return this.$el.show();
    };

    return ContenderButton;

  })(Backbone.View);

}).call(this);
