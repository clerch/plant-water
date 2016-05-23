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
            showAlert({
                type: 'success',
                message: "Your plant " + plant.new_plant.custom_name + " has been added",
            });
            $plantForm.closest('.modal').modal('hide');
            $plantList.append('<li  class="plant-sidebar-listing" data-plant-id="' + plant.new_plant.id + '" >'  + 
                '<span class="glyphicon glyphicon-leaf"></span>&nbsp;' +
                plant.new_plant.custom_name + ' ' + plant.common_name + 
                '<small><a class="remove-plant"><span class="glyphicon glyphicon-remove"></span>&nbsp;Remove plant</a></small></li>');
            $("#sidebar-wrapper").addClass("active");
        });

    });

    $('.plant').on('click', '.remove-plant', function(e){
        e.preventDefault();
        var $plant = $(e.delegateTarget);
        var plantId = $plant.data('plant-id');

        if(confirm('Are you sure you want to remove this plant?')){
            $.ajax({
                type: "DELETE",
                url: '/plant-delete/' + plantId,
                // success: removePlant,
            }).done(function(response){
                removePlant(plantId)
                showAlert({
                    type: 'success',
                    message: "Plant successfully removed",
                });
            })
            // }).done(removePlant.bind(this, response, $plant, plantId)})
        }
    });
});

var removePlant = function(plantId){
    $('.plant[data-plant-id=' + plantId + ']').fadeOut(function(){
        $(this).remove();        
    });
}
function showAlert(options){
    // Use jquery's extend function instead
    var options = options || {};
    var $alert = $('<div class="alert alert-' + (options.type || 'success') + '">' + options.message + '</div>')
    $('#portfolio').prepend($alert);
    window.setTimeout(function(){
        $alert.fadeOut(function(){
            $(this).remove();        
        });
    }, options.duration || 5000);
}
    

