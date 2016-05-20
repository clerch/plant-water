$(document).ready(function() {

  $("#menu-toggle").click(function() {
    $("#sidebar-wrapper").addClass("active");
  });

  $("#menu-close").click(function() {
    $("#sidebar-wrapper").removeClass("active");
  });
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
