$(document).ready(function() {
  $("div#something").mouseup(function() {
    return false;
  });

  $(document).mouseup(function(e) {
    if($(e.target).parent("a.nav").length==1) {
      $("div#something").hide();
    }
  });
  
  $(".nav").click(function(e) {
    e.preventDefault();
    $("div#something").toggle();
    $("li.dropdown").toggleClass("active")
  });
  
  $(document).bind('click', function(e) {
    var $clicked = $(e.target);
    if (! $clicked.parents().hasClass("dropdown")) {
      $("div#something").hide();
      $("li.dropdown").removeClass("active")
    }
  });
});
