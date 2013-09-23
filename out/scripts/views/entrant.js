(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  APP.views.Entrant = (function(_super) {
    __extends(Entrant, _super);

    function Entrant(data) {
      if (data == null) {
        data = {
          imgSrc: '/images/kielbasa.jpg',
          title: 'Test',
          description: 'blah blah blah'
        };
      }
      this.className = 'ff-entrant';
      this.data = data;
      Entrant.__super__.constructor.call(this);
    }

    Entrant.prototype.initialize = function() {
      return this.render();
    };

    Entrant.prototype.events = {};

    Entrant.prototype.render = function() {
      this.$el.html("<div class=\"ff-image-container\">\n  <img src=\"" + this.data.imgSrc + "\">\n</div>\n<div class=\"ff-image-relatives\">\n  <h6>" + this.data.title + "</h6>\n  <p>" + this.data.description + "</p>\n  <a class=\"button small success ff-lunch\">lunch it</a>\n  <a class=\"button small alert ff-lunch\">launch it</a>\n</div> ");
      return this.$el.prependTo('#ff-entrants');
    };

    return Entrant;

  })(Backbone.View);

}).call(this);
