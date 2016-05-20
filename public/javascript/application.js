$(document).ready(function() {

  $("#menu-toggle").click(function() {
    $("#sidebar-wrapper").addClass("active");
  });

  $("#menu-close").click(function() {
    $("#sidebar-wrapper").removeClass("active");
  });
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('form.add-plant').on('submit', function(e){

    e.preventDefault();
    var $plantForm = $(this);
    $.ajax({
      type: "POST",
      url: '/plant-add',
      data: $plantForm.serialize()
    }).done(function(plant){
      console.log(plant);
      $(".alert").removeClass("hidden")
      .text("Your plant " + plant.custom_name + " has been added");
      $plantForm.closest('.modal').modal('hide');
    });

  });
  $('.plant-sidebar-listing').on('click', '.remove-plant', function(e){
    e.preventDefault();
    var $plant = $(e.delegateTarget);
    var plantId = $plant.data('plant-id');
    if(confirm('Are you sure you want to remove this plant?')){
      $.ajax({
      type: "DELETE",
      url: '/plant-delete/' + plantId,
    }).done(function(response){
      $plant.remove();
      $('.plant-card-listing[data-plant-id=' + plantId + ']').fadeOut(function(){
        $(this).remove();
      });
    });
    }
  });
});
