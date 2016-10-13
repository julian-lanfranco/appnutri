
$(document).ready(function() {    
$("#actualizaclub").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=clubes&accion=btnActualizarClub",
           data: $("#actualizaclub").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


});

