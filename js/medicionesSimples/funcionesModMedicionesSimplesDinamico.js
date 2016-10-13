
$(document).ready(function() {    
$("#actualizamedicionsimple").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples&accion=guardarMedicionesSimples",
           data: $("#actualizamedicionsimple").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


});

