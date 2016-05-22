var $plant

$(document).ready(function() {


    var $plantList = $('.plant-list');

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
        }).done(function(response){
            var plant = response.plant;
            $(".alert").removeClass("hidden")
            .text("Your plant " + plant.new_plant.custom_name + " has been added");
            $plantForm.closest('.modal').modal('hide');
            $plantList.append('<li  class="plant-sidebar-listing"' 
            +'    data-plant-id="' + plant.new_plant.id + '" >'+plant.new_plant.custom_name+' '+plant.common_name
            +'    <small><a class="remove-plant">Remove plant</a></small>'
            +'</li>');
        });

    });

    $('.plant-list').on('click', '.remove-plant', function(e){
        e.preventDefault();
        var $plant = $(e.target).closest('.plant-sidebar-listing')
        var plantId = $plant.data('plant-id');

        if(confirm('Are you sure you want to remove this plant?')){
            $.ajax({
                type: "DELETE",
                url: '/plant-delete/' + plantId,
                // success: removePlant,
            }).done(function(response){removePlant(response, $plant, plantId)})
            // }).done(removePlant.bind(this, response, $plant, plantId)})
        }
    });
});

var removePlant = function(response, $plant, plantId){
    $plant.remove();
    $('.plant-card-listing[data-plant-id=' + plantId + ']').fadeOut(function(){
        $(this).remove();
        var plant = response.plant;
        $(".remove-alert").removeClass("hidden");
    });
}

    

