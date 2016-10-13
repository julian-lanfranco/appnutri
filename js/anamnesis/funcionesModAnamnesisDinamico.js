
$(document).ready(function() {    
$("#actualizaanamnesi").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=anamnesis&accion=guardarAnamnesis",
           data: $("#actualizaanamnesi").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


});

