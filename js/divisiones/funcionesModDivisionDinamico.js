
$(document).ready(function() { 
        
 
$("#actualizadivision").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=divisiones&accion=btnActualizarDivision",
           data: $("#actualizadivision").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});
 

});

