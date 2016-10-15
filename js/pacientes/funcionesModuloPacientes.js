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
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  idDivision:  "+idDivision+" id Seleccion: "+idSeleccion+" idSelDivision: "+idSelDivision);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarDeportesXClubMigracion&idClub="+idClub,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeDeportesOrigen').html(a);
                                            $('#listadoJugadores').html(cabecera());
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
                        data: "accion=buscarDeportesXClubMigracionDestino&idClub="+idClub,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeDeportesDestino').html(a);
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
                
                //var idDivision=$("#seleccionDivisionesModPacientes").val();

                
                
                //alert("id Club: "+idClub+"  Deporte:  "+deporte);
  

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=buscarSexoXDeportesXClubMigracion&deporte="+deporte+"&idClub="+idClub,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeSexoOrigen').html(a);
                                            $('#listadoJugadores').html(cabecera());
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
                        data: "accion=buscarSexoXDeportesXClubMigracionDestino&deporte="+deporte+"&idClub="+idClub,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeSexoDestino').html(a);
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

                                            //$('#central').html(a); 
                                            $('#selectorDeDivisionesOrigen').html(a);
                                            $('#listadoJugadores').html(cabecera());
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
                        data: "accion=buscarDivisionesXSexoXDeportesXClubMigracionDestino&deporte="+deporte+"&idClub="+idClub+"&sexo="+sexo,
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#selectorDeDivisionesDestino').html(a);
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
                
                        success: function(a) {

                                            //$('#central').html(a); 
                                            $('#listadoJugadores').html(a);
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