
$(document).ready(function() {    
$("#actualizaestudiolaboratorio").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio&accion=guardarEstudioLaboratorio",
           data: $("#actualizaestudiolaboratorio").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


});

