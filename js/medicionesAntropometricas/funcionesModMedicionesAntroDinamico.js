
$(document).ready(function() {    
$("#actualizamedicionantro").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas&accion=guardarMedicionesAntropometricas",
           data: $("#actualizamedicionantro").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


});

