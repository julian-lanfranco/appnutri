	
     var ambito ="localhost";
     
    $(document).ready(function() {



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


        

                $('#btnNuevaMedicionSimple').click(function(){
                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples&idPaciente="+idPaciente,
                        data: "accion=mostrarNuevoMedicionesSimples",
                        success: function(a) {
                                            $('#central').html(a); 
                                             }
                            });
                });




        $('#btnMostrarTablaMedicionesSimples').click(function(){

                    var idPaciente=$("#idPaciente").val();
                      $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples&idPaciente="+idPaciente,
                        data: "accion=listarMedicionesSimples",
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

$.getScript( "js/medicionesSimples/funcionesModuloMedicionesSimples.js" )
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

  

});



