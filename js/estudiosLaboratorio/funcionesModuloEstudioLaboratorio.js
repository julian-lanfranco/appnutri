//Funciones Js del Modulo Clubes


$("#central").on("click", "#imgMostarActualizarEstudioLaboratorio", function(){
        
            var idEstudioLaboratorio = $(this).attr('name');


         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                        data:"accion=mostrarActualizarEstudioLaboratorio&idEstudioLaboratorio="+idEstudioLaboratorio,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });




$("#central").on("click", "#imgMostrarListarEstudioLaboratorio", function(){
        
         var idPaciente = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                        data:"accion=listarEstudioLaboratorio&idPaciente="+idPaciente,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });


        $("#central").on("click", "#imgMostrarEliminarEstudioLaboratorio", function(){
        
        var idPaciente=$("#idPaciente").val();
        var idEstudioLaboratorio = $(this).attr('name');


                 if (confirm("Esta seguro qué desea eliminar el estudio Id "+idEstudioLaboratorio))
                 {
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                                        data: "accion=eliminarEstudioLaboratorio&idEstudioLaboratorio="+idEstudioLaboratorio+"&idPaciente="+idPaciente,

                                        success: function(b) {
                                                            $('#central').html(b); 
                                                            }
                                });
                }
    

        });





        $("#central").on("click", "#imgMostraNuevoEstudioLaboratorio", function(){
        
                    var idPaciente = $(this).attr('name');


                
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                                        data: "accion=mostrarNuevoEstudioLaboratorio&idPaciente="+idPaciente,

                                        success: function(b) {  
                                                            $('#central').html(b); 
                                                            }
                                });
                                
                
    

        });

            
            $("#central").on("click", "#imgMostrarConsultarEstudioLaboratorio", function(){
        
         var idEstudioLaboratorio = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                        data:"accion=mostrarConsultarEstudioLaboratorio&idEstudioLaboratorio="+idEstudioLaboratorio,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });




        $("#central").on("change", "#seleccionClubesModTablaEstudioLaboratorio", function(){
        
                var idClub=$("#seleccionClubesModTablaEstudioLaboratorio").val();



                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionDivisionesModTablaEstudioLaboratorio", function(){
        
                var idClub=$("#seleccionClubesModTablaEstudioLaboratorio").val();
                var idDivision=$("#seleccionDivisionesModTablaEstudioLaboratorio").val();


                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub+"&idDivision="+idDivision,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });

        

        $("#central").on("click", "#btnCancelarCrearEstudioLaboratorio", function(){     

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


        $("#central").on("click", "#btnImprimirEstudioLaboratorio", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio";

            var idEstudioLaboratorio=$("#idEstudioLaboratorio").val();

             if (confirm(" Esta seguro qué desea imprimir el estudio :"+idEstudioLaboratorio+"  ?"))
            {
       
            window.open ("http://"+ambito+
                "/appnutri/?modulo=estudioLaboratorio&accion=imprimirConsultaEstudioLaboratorio&idEstudioLaboratorio="+
                                                                                                idEstudioLaboratorio);
            
            }
        });

        $("#central").on("click", "#btnCancelarImprimirEstudioLaboratorio", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                                data: "accion=listarEstudioLaboratorio&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });

        $("#central").on("click", "#btnCancelarGuardarActualizarEstudioLaboratorio", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=estudioLaboratorio",
                                data: "accion=listarEstudioLaboratorio&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });
        
   
