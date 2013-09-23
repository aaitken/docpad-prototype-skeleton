(function() {
  $(document).foundation();

  APP.views.contender = new APP.views.Contender();

  $('.ff-entrant').each(function() {
    return new APP.views.Entrant({
      el: this
    });
  });

}).call(this);
