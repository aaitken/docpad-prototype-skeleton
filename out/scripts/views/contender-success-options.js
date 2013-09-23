(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  APP.views.ContenderSuccessOptions = (function(_super) {
    __extends(ContenderSuccessOptions, _super);

    function ContenderSuccessOptions() {
      this.el = '#ff-success-options';
      ContenderSuccessOptions.__super__.constructor.call(this);
    }

    ContenderSuccessOptions.prototype.hide = function() {
      return this.$el.hide();
    };

    ContenderSuccessOptions.prototype.resolveLatency = function() {
      var _this = this;
      return setTimeout((function() {
        return _this.show();
      }), 2500);
    };

    ContenderSuccessOptions.prototype.show = function() {
      return this.$el.show();
    };

    return ContenderSuccessOptions;

  })(Backbone.View);

}).call(this);
