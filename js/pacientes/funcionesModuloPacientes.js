function cabecera() {
    return "<table class='table table-striped header-fixed' style='width: 100%;'><tr style=''><th style='width: 33%; float: left;'>Id</th>   <th style='width: 33%; float: left;'>Nombre</th><th style='width: 33%; float: left;'>Migrar</th></tr>   <tbody style='display: block;  overflow-y: auto;float: left;height: 250px; width:100%'></tbody></table>";              
}

//Funciones Js del Modulo Pacientes
$("#central").on("click", "#imgSeleccionarPaciente", function(){
        
         var idPaciente = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data:"accion=seleccionPaciente&idPaciente="+idPaciente,

                        success: function(b) {
                                            $('#pacienteSeleccionado').html(b);
                                            alert("Paciente Seleccionado!"); 
                                            $('#central').html("");
                                            }
                    });

         });


        $("#central").on("click", "#imgMostrarEliminarPaciente", function(){
        
        var idPaciente = $(this).attr('name');        
        var idClub=$("#seleccionClubesModTablaPacientes").val();
        var idDivision=$("#seleccionDivisionesModTablaPacientes").val();

                 if (confirm("Esta seguro que desea eliminar el Paciente "+idPaciente))
                 {
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                                        data: "accion=eliminarPaciente&idPaciente="+idPaciente+"&idClub="+idClub+"&idDivision="+idDivision,

                                        success: function(b) {
                                                            $('#central').html(b); 
                                                            }
                                });
                }
    

        });


        $("#central").on("click", "#imgMostrarConsultarPaciente", function(){
        
         var idPaciente = $(this).attr('name');
        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                                data: "accion=consultarPaciente&idPaciente="+idPaciente,

                                success: function(b) {

                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });


 

//listeners para filtrado de divisiones de clubes

        $("#central").on("change", "#seleccionClubesModModificarPacientes", function(){
        


                var club=$("#seleccionClubesModModificarPacientes").val();

                var idPaciente=$("#idPaciente").val();

                $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data:"accion=mostrarActualizarPaciente&idPaciente="+idPaciente+"&club="+club,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });  

        $("#central").on("click", "#btnCancelarActualizarPaciente", function(){
                var idClub=$("#seleccionClubesModModificarPacientes").val();
                var idDivision=$("#seleccionDivisionesModModificarPacientes").val();
                
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                                data: "accion=mostrarTablaPacientes&idClub="+idClub+"&idDivision="+idDivision,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });




        $("#central").on("change", "#cadenaPaciente", function(){
        
                var cadenaPaciente=$("#cadenaPaciente").val();
                var idClub=$("#seleccionClubesModTablaPacientes").val();
                var idDivision=$("#seleccionDivisionesModTablaPacientes").val();
                alert(cadenaPaciente);


                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=pacientes&cadenaPaciente="+cadenaPaciente+
                                "&idClub="+idClub+"&idDivision="+idDivision,
                                data: "accion=mostrarTablaPacientes",
                                success: function(a) {

                                                    $('#central').html(a); 

                                                    var textbox = document.getElementById("cadenaPaciente");   
                                                    textbox.focus();


                                                  

                                                        }

                            });



        
        });


     $("#central").on("change", "#seleccionClubesModTablaPacientes", function(){
        
                var idClub=$("#seleccionClubesModTablaPacientes").val();



                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });

// inicio de los listeners para busqueda de divisiones de clubes

        $("#central").on("change", "#seleccionClubesModPacientes", function(){

                
                var idClub=$("#seleccionClubesModPacientes").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  idDivision:  "+idDivision+" id Seleccion: "+idSeleccion+" idSelDivision: "+idSelDivision);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDeportesXClub&idClub="+idClub,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeDeportes').html(a);
                                             }
                        });
});

        $("#central").on("change","#seleccionClubesOrigen", function(){

                
                var idClub=$("#seleccionClubesOrigen").val();
                var tipo_form=$("#tipo_form").val();




                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDeportesXClubMigracion&idClub="+idClub+"&tipo_form="+tipo_form,
                        
                        success: function(a) {
                                            var deportes=JSON.parse(a);
                                            var deportesSelect="<div class='col-sm-2'><select name='seleccionDeportesOrigen' class='form-control' id='seleccionDeportesOrigen'>";
                                            deportesSelect=deportesSelect+"<option label='ninguno' value='ninguno'>Ninguno</option>";       
                                            for(var i in deportes)
                                                        {
                                                            deportesSelect=deportesSelect+"<option>"+deportes[i]+"</option>";
                                                        }
                                            deportesSelect=deportesSelect+"</select></div>";
                                            $('#selectorDeDeportesOrigen').html(deportesSelect);
                                             }
                        });

        
        });



        $("#central").on("change","#seleccionClubesDestino", function(){

                
                var idClub=$("#seleccionClubesDestino").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  idDivision:  "+idDivision+" id Seleccion: "+idSeleccion+" idSelDivision: "+idSelDivision);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDeportesXClubMigracion&idClub="+idClub,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            var deportes=JSON.parse(a);
                                            var deportesSelect="<div class='col-sm-2'><select name='seleccionDeportesDestino' class='form-control' id='seleccionDeportesDestino'>";
                                            deportesSelect=deportesSelect+"<option label='ninguno' value='ninguno'>Ninguno</option>";       
                                            for(var i in deportes)
                                                        {
                                                            deportesSelect=deportesSelect+"<option>"+deportes[i]+"</option>";
                                                        }
                                            deportesSelect=deportesSelect+"</select></div>";
                                            $('#selectorDeDeportesDestino').html(deportesSelect);
                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionDeportesModPacientes", function(){

                
                var deporte=$("#seleccionDeportesModPacientes").val();
                var idClub=$("#seleccionClubesModPacientes").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarSexoXDeportesXClub&deporte="+deporte+"&idClub="+idClub,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeSexo').html(a);
                                             }
                        });

        
        });


        $("#central").on("change", "#seleccionDeportesOrigen", function(){

                
                var deporte=$("#seleccionDeportesOrigen").val();
                var idClub=$("#seleccionClubesOrigen").val();
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarSexoXDeportesXClubMigracion&deporte="+deporte+"&idClub="+idClub,
                
                        success: function(a) {

                                            var sexos=JSON.parse(a);
                                            var sexoSelect="<div class='col-sm-2'><select name='seleccionSexoOrigen' class='form-control' id='seleccionSexoOrigen'>";
                                            sexoSelect=sexoSelect+"<option label='ninguno' value='ninguno'>Ninguno</option>";       
                                            for(var i in sexos)
                                                        {
                                                            sexoSelect=sexoSelect+"<option>"+sexos[i]+"</option>";
                                                        }
                                            sexoSelect=sexoSelect+"</select></div>";
                                            $
                                             
                                            $('#selectorDeSexoOrigen').html(sexoSelect);
                                            
                                             }
                        });

        
        });

$("#central").on("change", "#seleccionDeportesDestino", function(){

                
                var deporte=$("#seleccionDeportesDestino").val();
                var idClub=$("#seleccionClubesDestino").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarSexoXDeportesXClubMigracion&deporte="+deporte+"&idClub="+idClub,
                
                        success: function(a) {

                                            var sexos=JSON.parse(a);
                                            var sexoSelect="<div class='col-sm-2'><select name='seleccionSexoDestino' class='form-control' id='seleccionSexoDestino'>";
                                            sexoSelect=sexoSelect+"<option label='ninguno' value='ninguno'>Ninguno</option>";       
                                            for(var i in sexos)
                                                        {
                                                            sexoSelect=sexoSelect+"<option>"+sexos[i]+"</option>";
                                                        }
                                            sexoSelect=sexoSelect+"</select></div>";
                                            $
                                             
                                            $('#selectorDeSexoDestino').html(sexoSelect);
                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionSexoModPacientes", function(){

                
                var deporte=$("#seleccionDeportesModPacientes").val();
                var idClub=$("#seleccionClubesModPacientes").val();
                var sexo=$("#seleccionSexoModPacientes").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDivisionesXSexoXDeportesXClub&deporte="+deporte+"&idClub="+idClub+"&sexo="+sexo,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeDivisiones').html(a);
                                             }
                        });

        
        });

    $("#central").on("change", "#seleccionSexoOrigen", function(){

                
                var deporte=$("#seleccionDeportesOrigen").val();
                var idClub=$("#seleccionClubesOrigen").val();
                var sexo=$("#seleccionSexoOrigen").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDivisionesXSexoXDeportesXClubMigracion&deporte="+deporte+"&idClub="+idClub+"&sexo="+sexo,
                
                        success: function(a) {

                                            var divisiones=JSON.parse(a);
                                            var divisionSelect="<div class='col-sm-2'><select name='seleccionDivisionesOrigen' class='form-control' id='seleccionDivisionesOrigen'>";
                                            divisionSelect=divisionSelect+"<option label='ninguno' value='ninguno'>Ninguno</option>";      
                                            for(var i in divisiones)
                                                        {
                                                            divisionSelect=divisionSelect+"<option label='"+divisiones[i].id+"' value='"+divisiones[i].id+"'>"+divisiones[i].nombre+"</option>";
                                                        }
                                            divisionSelect=divisionSelect+"</select></div>";
                                             
                                            $('#selectorDeDivisionesOrigen').html(divisionSelect);

                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionSexoDestino", function(){

                
                var deporte=$("#seleccionDeportesDestino").val();
                var idClub=$("#seleccionClubesDestino").val();
                var sexo=$("#seleccionSexoDestino").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDivisionesXSexoXDeportesXClubMigracion&deporte="+deporte+"&idClub="+idClub+"&sexo="+sexo,
                
                        success: function(a) {

                                            var divisiones=JSON.parse(a);
                                            var divisionSelect="<div class='col-sm-2'><select name='seleccionDivisionesDestino' class='form-control' id='seleccionDivisionesDestino'>";
                                            divisionSelect=divisionSelect+"<option label='ninguno' value='ninguno'>Ninguno</option>";      
                                            for(var i in divisiones)
                                                        {
                                                            divisionSelect=divisionSelect+"<option label='"+divisiones[i].id+"' value='"+divisiones[i].id+"'>"+divisiones[i].nombre+"</option>";
                                                        }
                                            divisionSelect=divisionSelect+"</select></div>";
                                             

                                            $('#selectorDeDivisionesDestino').html(divisionSelect);
                                             }
                        });

        
        });

    $("#central").on("change", "#seleccionDivisionesOrigen", function(){

                
                var division=$("#seleccionDivisionesOrigen").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarJugadoresXDivision&division="+division,
                
                        success: function(b) {

                                            var juga=JSON.parse(b);
                                            var jugadoresTabla="<table class='table table-striped header-fixed' style='width: 100%;'><tr style=''><th style='width: 33%; float: left;'>Id</th><th style='width: 33%; float: left;'>Nombre</th><th style='width: 33%; float: left;'>Migrar</th></tr><tbody style='display: block;  overflow-y: auto; float: left;height: 250px; width:100%'>";

    
                                            for(var i in juga)
                                                        {
                                                            jugadoresTabla=jugadoresTabla+"<tr style='width: 100%; display: inline-table;'><td style='width: 33%;    float: left;'>"
                                                            +juga[i].id+"</td><td style='width: 33%;    float: left;'>"
                                                            +juga[i].apellido+" "+juga[i].nombre+"</td><td style='width: 33%;    float: left;'><input type='checkbox' name='jugadorMigracion[]' value='"
                                                            +juga[i].id+"' id='jugadorMigracion[]' align='CENTER'  style='cursor:pointer'  checked></td></tr>";
                                                            
                                                        }

                                            jugadoresTabla=jugadoresTabla+"</tbody></table>";
                                            //alert(jugadoresTabla);

                                            $('#listadoJugadores').html(jugadoresTabla);
                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionDivisionesModTablaPacientes", function(){
        
                var idClub=$("#seleccionClubesModTablaPacientes").val();
                var idDivision=$("#seleccionDivisionesModTablaPacientes").val();


                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub+"&idDivision="+idDivision,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });

    //fin de los listener para la busqueda de divisiones de clubes



    //inicio de los listener para la busqueda de divisiones en selecciones

        $("#central").on("change", "#seleccionSeleccionesModPacientes", function(){

                
                var idSeleccion=$("#seleccionSeleccionesModPacientes").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  idDivision:  "+idDivision+" id Seleccion: "+idSeleccion+" idSelDivision: "+idSelDivision);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDeportesXSeleccion&idSeleccion="+idSeleccion,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeDeportesSeleccion').html(a);
                                             }
                        });

        
        });

            $("#central").on("change", "#seleccionDeportesSeleccionModPacientes", function(){

                
                var deporte=$("#seleccionDeportesSeleccionModPacientes").val();
                var idSeleccion=$("#seleccionSeleccionesModPacientes").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idSeleccion+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarSexoXDeportesXSeleccion&deporte="+deporte+"&idSeleccion="+idSeleccion,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeSexoSelecciones').html(a);
                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionSexoSeleccionesModPacientes", function(){

                
                var deporte=$("#seleccionDeportesSeleccionModPacientes").val();
                var idSeleccion=$("#seleccionSeleccionesModPacientes").val();
                var sexo=$("#seleccionSexoSeleccionesModPacientes").val();
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDivisionesXSexoXDeportesXSeleccion&deporte="+deporte+"&idSeleccion="+idSeleccion+"&sexo="+sexo,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeDivisionesSelecciones').html(a);
                                             }
                        });

        
        });


    //fin de de los listener para la busqueda de divisiones en selecciones




        






                
        

        $("#central").on("change", "#seleccionSelModPacientes", function(){

                
                
 
                var idSeleccion=$("#seleccionSelModPacientes").val();
                

                var idSelDivision=$("#seleccionSelDivisionesModPacientes").val();
                
                
                //alert("id Club: "+idClub+"  idDivision:  "+idDivision+" id Seleccion: "+idSeleccion+" idSelDivision: "+idSelDivision);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarSeleccionesYDivisiones&idSeleccion="+idSeleccion+"&idSelDivision="+idSelDivision,
                
                        success: function(a) {

                                            $('#selectorDeSelecciones').html(a);
                                             }
                        });
        
        });

        
       

        $("#central").on("click", "#btnCancelarCrearPaciente", function(){       

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                                data: "accion=mostrarTablaPacientes",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                    }

                            });
        
        });


        $("#central").on("click", "#btnImprimirConsultaPaciente", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=pacientes";
            var idPaciente=$("#idPaciente").val();

             if (confirm(" Esta seguro que desea imprimir los datos del paciente :"+idPaciente+"  ?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=pacientes&accion=imprimirConsultaPaciente&idPaciente="+idPaciente);
            
            }
        });


        $("#central").on("click", "#btnVolverConsultaPaciente", function(){
            
              var idClub=$("#idClub").val();
                var idDivision=$("#idDivision").val();
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                                data: "accion=mostrarTablaPacientes&idClub="+idClub+"&idDivision="+idDivision,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        


            });