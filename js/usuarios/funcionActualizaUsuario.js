

 //cuando presiona el boton actualizar del formulario edita usuario   
 $(document).ready(function() {
 $("#actualizausuario").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=usuarios&accion=guardarUsuario",
           data: $("#actualizausuario").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});   



});
