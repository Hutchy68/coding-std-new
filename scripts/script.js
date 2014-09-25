(function() {
  var scroll_if_anchor;

  scroll_if_anchor = function(href) {
    var $target, fromTop;
    href = (typeof href === "string" ? href : $(this).attr("href"));
    if (!href) {
      return;
    }
    fromTop = 60;
    if (href.charAt(0) === "#") {
      $target = $(href);
      if ($target.length) {
        $("html, body").animate({
          scrollTop: $target.offset().top - fromTop
        });
        if (history && "pushState" in history) {
          history.pushState({}, document.title, window.location.pathname + href);
          return false;
        }
      }
    }
  };

  $(function() {
    return $("h2, h3, h4, h5, h6").each(function(i, el) {
      var $el, icon, id;
      $el = void 0;
      icon = void 0;
      id = void 0;
      $el = $(el);
      id = $el.attr("id");
      icon = "<i class=\"fa fa-link\"></i>";
      if (id) {
        return $el.prepend($("<a />").addClass("header-link").attr("href", "#" + id).html(icon));
      }
    });
  });

  scroll_if_anchor(window.location.hash);

  $("body").on("click", "a", scroll_if_anchor);

  $("#code").addClass("active");

}).call(this);
