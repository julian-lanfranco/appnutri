	
     var ambito ="localhost";
     
    $(document).ready(function() {



        $('#btnCrearRespaldo').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=sistema",
                        data: "accion=mostrarCrearRespaldo",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });


        $('#btnListarRespaldos').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=sistema",
                        data: "accion=listarRespaldos",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });


        $('#btnMostrarSubirRespaldo').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=sistema",
                        data: "accion=mostrarSubirRespaldo",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });



		$('#btnMostrarTablaClubes').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=clubes",
                        data: "accion=mostrarTablaClubes",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });

        $('#btnMostrarMigrarJugadores').click(function(){
                      
                    
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=mostrarMigrarJugadores",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                            
                });
                $('#btnMostrarMigrarJugadoresSeleccion').click(function(){
                      
                    
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=mostrarMigrarJugadoresSeleccion",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                            
                });
        

		$('#btnMostrarNuevoClub').click(function(){

		              $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=clubes",
                        data: "accion=mostrarNuevoClub",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });



        $('#btnMostrarTablaDivisiones').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                        data: "accion=mostrarTablaDivisiones",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });


        $('#btnMostrarNuevoDivision').click(function(){

                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                        data: "accion=mostrarNuevoDivision",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });

        $('#btnMostrarNuevoPaciente').click(function(){

                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=btnMostrarNuevoPaciente",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });
                       
        $('#btnMostrarModificarPaciente').click(function(){
        

         var idPaciente=$("#idPaciente").val();
       

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data:"accion=mostrarActualizarPaciente&idPaciente="+idPaciente,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });

        $('#btnMostrarTablaPacientes').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=pacientes",
                        data: "accion=mostrarTablaPacientes",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });


        $('#btnNuevaAnamnesis').click(function(){
                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis&idPaciente="+idPaciente,
                        data: "accion=mostrarNuevoAnamnesis",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });




        $('#btnMostrarTablaAnamnesis').click(function(){
                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis&idPaciente="+idPaciente,
                        data: "accion=imgMostrarListarAnamnesis",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });


        

                $('#btnNuevaMedicionAntro').click(function(){
                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas&idPaciente="+idPaciente,
                        data: "accion=mostrarNuevoMedicionesAntropometricas",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });
                
                $('#btnlistarMedicionAntro').click(function(){
                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas&idPaciente="+idPaciente,
                        data: "accion=listarMedicionesAntropometricas",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });
                
                
                $('#btnGraficasMedicionAntro').click(function(){
                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas&idPaciente="+idPaciente,
                        data: "accion=graficarMedicionesAntropometricas",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });





        $('#btnNuevoEstudioLaboratorio').click(function(){

                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio&idPaciente="+idPaciente,
                        data: "accion=mostrarNuevoEstudioLaboratorio",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });

        $('#btnlistarEstudioLaboratorio').click(function(){

                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio&idPaciente="+idPaciente,
                        data: "accion=listarEstudioLaboratorio",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });

        $('#btnNuevoRecordatorio24').click(function(){

                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=recordatorio24&idPaciente="+idPaciente,
                        data: "accion=mostrarNuevoRecordatorio24",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });

        $('#btnlistarRecordatorio24').click(function(){

                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=recordatorio24&idPaciente="+idPaciente,
                        data: "accion=mostrarTablaRecordatorio24",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });




             $('#btnMostarEstadisticaMedicionSimple').click(function(){    
        
            var url = "http://"+ambito+"/appnutri/?modulo=medicionesSimples";

            var idPaciente=$("#idPaciente").val();

             if (confirm(" Esta seguro que desea imprimir la estadistica?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=medicionesSimples&accion=generarEstadisticaMedicionSimple&idPaciente="+idPaciente);
            
            }
        });





        
        $('#btnMostrarTablaEstudiosLaboratorio').click(function(){

                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                        data: "accion=mostrarTablaPacientes",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });


        $('#btnMostrarTablaRecordatorio24').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                        data: "accion=mostrarTablaPacientes",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });


        $('#btnCerrarSesion').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=usuarios",
                        data: "accion=CerrarSesion",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });


        $('#btnCambiarPassword').click(function(){
                      
                    
                    $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=usuarios",
                        data: "accion=mostrarActualizarUsuario",
                        success: function(a) {
                                $('#central').html(a); 
                                                }
                            });
                });


$.getScript( "js/clubes/funcionesModuloClubes.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 1." );
});


$.getScript( "js/divisiones/funcionesModuloDivisiones.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 2." );
});

$.getScript( "js/pacientes/funcionesModuloPacientes.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 3." );
});


$.getScript( "js/anamnesis/funcionesModuloAnamnesis.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 4." );
});

$.getScript( "js/medicionesAntropometricas/funcionesModuloMedicionesAntropometricas.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 5." );
});

$.getScript( "js/usuarios/funcionesModuloUsuarios.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 5." );
});


$.getScript( "js/estudiosLaboratorio/funcionesModuloEstudioLaboratorio.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 6." );
});

$.getScript( "js/funcionesModuloRecordatorio24.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 7." );
});

$.getScript( "js/sistema/funcionesModuloSistema.js" )
  .fail(function( jqxhr, settings, exception ) {
    alert( "Triggered ajaxError handler 7." );
});

  

});



