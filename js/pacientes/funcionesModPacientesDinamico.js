
$(document).ready(function() {    
$("#actualizapaciente").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=pacientes&accion=btnActualizarPaciente",
           data: $("#actualizapaciente").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


});

