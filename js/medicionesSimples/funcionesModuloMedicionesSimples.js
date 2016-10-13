//Funciones Js del Modulo Clubes


$("#central").on("click", "#imgMostarActualizarMedicionSimple", function(){
        
            var idMedicionSimple = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                        data:"accion=mostrarActualizarMedicionSimple&idMedicionSimple="+idMedicionSimple,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });


       

$("#central").on("click", "#imgMostrarListarMedicionesSimples", function(){
        
         var idPaciente = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                        data:"accion=listarMedicionesSimples&idPaciente="+idPaciente,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });


        $("#central").on("click", "#imgMostrarEliminarMedicionesSimples", function(){
        
        var idPaciente=$("#idPaciente").val();
        var idMedicionSimple = $(this).attr('name');


                 if (confirm("Esta seguro que desea eliminar la Medicion Simple "+idMedicionSimple))
                 {
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                                        data: "accion=eliminarMedicionSimple&idMedicionSimple="+idMedicionSimple+"&idPaciente="+idPaciente,

                                        success: function(b) {
                                                            $('#central').html(b); 
                                                            }
                                });
                }
    

        });





        $("#central").on("click", "#imgMostarNuevoMedicionesSimples", function(){
        
                    var idPaciente = $(this).attr('name');


                
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                                        data: "accion=mostrarNuevoMedicionesSimples&idPaciente="+idPaciente,

                                        success: function(b) {  
                                                            $('#central').html(b); 
                                                            }
                                });
                                
                
    

        });

            
            $("#central").on("click", "#imgMostrarConsultarMedicionesSimples", function(){
        
         var idMedicionSimple = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                        data:"accion=mostrarConsultarMedicionSimple&idMedicionSimple="+idMedicionSimple,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });




        $("#central").on("change", "#seleccionClubesModTablaMedicionesSimples", function(){
        
                var idClub=$("#seleccionClubesModTablaMedicionesSimples").val();



                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionDivisionesModTablaMedicionesSimples", function(){
        
                var idClub=$("#seleccionClubesModTablaMedicionesSimples").val();
                var idDivision=$("#seleccionDivisionesModTablaMedicionesSimples").val();


                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub+"&idDivision="+idDivision,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });

        

        $("#central").on("click", "#btnCancelarCrearMedicionSimple", function(){     

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


        $("#central").on("click", "#btnImprimirMedicionSimple", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=medicionesSimples";

            var idMedicionSimple=$("#idMedicionSimple").val();

             if (confirm(" Esta seguro que desea imprimir la Medicion :"+idMedicionSimple+"  ?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=medicionesSimples&accion=imprimirConsultaMedicionSimple&idMedicionSimple="+idMedicionSimple);
            
            }
        });





        $("#central").on("click", "#imgImprimirEstadisticaMedicionesSimples", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=medicionesSimples";

            var idPaciente = $(this).attr('name');

             if (confirm(" Esta seguro que desea imprimir la estadistica?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=medicionesSimples&accion=imprimirEstadisticaMedicionSimple&idPaciente="+idPaciente);
            
            }
        });


        $("#central").on("click", "#btnCancelarImprimirMedicionSimple", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                                data: "accion=listarMedicionesSimples&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });

        $("#central").on("click", "#btnCancelarGuardarActualizarMedicionSimple", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesSimples",
                                data: "accion=listarMedicionesSimples&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });
        


   
