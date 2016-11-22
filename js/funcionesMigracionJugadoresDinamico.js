function cabecera() {
    return "<table class='table table-striped header-fixed' style='width: 100%;'> <tr style=''><th style='width: 33%; float: left;'>Id</th><th style='width: 33%; float: left;'>Nombre</th><th style='width: 33%; float: left;'>Migrar</th></tr>    <tbody style='display: block;  overflow-y: auto;float: left;height: 250px; width:100%'></tbody></table>";              
}

$(document).ready(function() {



$("#migrarJugadores").submit(function(e) {

    $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=pacientes&accion=migrarJugadores",
           data: $("#migrarJugadores").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#listadoJugadores').html(cabecera()); 
                alert("Migracion Exitosa");
                //$('#listadoJugadores').html(data); 

           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
    
});

});