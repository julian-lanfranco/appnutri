//Funciones Js del Modulo Clubes


$("#central").on("click", "#imgMostarActualizarAnamnesis", function(){
        
            var idAnamnesis = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                        data:"accion=mostrarActualizarAnamnesis&idAnamnesis="+idAnamnesis,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });



$("#central").on("click", "#imgMostrarNuevoAnamnesis", function(){
        
         paciente = $(this).attr('name');
         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis&idPaciente="+paciente,
                        data: "accion=mostrarNuevoAnamnesis",

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });


   

$("#central").on("click", "#imgMostrarConsultarAnamnesis", function(){
        
         var idAnamnesis = $(this).attr('name');


         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                        data:"accion=mostrarConsultarAnamnesis&idAnamnesis="+idAnamnesis,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });


        $("#central").on("click", "#imgMostrarEliminarAnamnesis", function(){
        
        var idAnamnesis = $(this).attr('name');
        var idPaciente=$("#idPaciente").val();


                 if (confirm("Esta seguro qué desea eliminar la Anamnesis "+idAnamnesis))
                 {
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                                        data: "accion=eliminarAnamnesis&idAnamnesis="+idAnamnesis+"&idPaciente="+idPaciente,

                                        success: function(b) {
                                                            $('#central').html(b); 
                                                            }
                                });
                }
    

        });





        $("#central").on("click", "#imgMostarNuevoAnamnesis", function(){
        
                    var idPaciente = $(this).attr('name');


                
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                                        data: "accion=mostrarNuevoAnamnesis&idPaciente="+idPaciente,

                                        success: function(b) {  
                                                            $('#central').html(b); 
                                                            }
                                });
                                
                
    

        });


        $("#central").on("click", "#imgMostrarListarAnamnesis", function(){
        
         var idPaciente = $(this).attr('name');

        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                                data: "accion=imgMostrarListarAnamnesis&idPaciente="+idPaciente,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });



        $("#central").on("change", "#seleccionClubesModTablaAnamnesis", function(){
        
                var idClub=$("#seleccionClubesModTablaAnamnesis").val();



                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });


    $("#central").on("change", "#seleccionDivisionesModTablaAnamnesis", function(){
        
                var idClub=$("#seleccionClubesModTablaAnamnesis").val();
                var idDivision=$("#seleccionDivisionesModTablaAnamnesis").val();


                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub+"&idDivision="+idDivision,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });

        

        $("#central").on("click", "#btnCancelarCrearAnamnesis", function(){     

                var idPaciente=$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=anamnesis&idPaciente="+idPaciente,
                        data: "accion=btnCancelarCrearAnamnesis",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                    }

                            });
        
        });


        $("#central").on("click", "#btnImprimirAnamnesis", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=divisiones";

            var idAnamnesis=$("#idAnamnesis").val();

             if (confirm(" Esta seguro qué desea imprimir la Anamnesis :"+idAnamnesis+"  ?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=anamnesis&accion=imprimirConsultaAnamnesis&idAnamnesis="+idAnamnesis);
            
            }
        });




        $("#central").on("click", "#btnCancelarImprimirAnamnesis", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                                data: "accion=imgMostrarListarAnamnesis&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });

        $("#central").on("click", "#btnCancelarGuardarActualizarAnamnesis", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=anamnesis",
                                data: "accion=imgMostrarListarAnamnesis&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });
        


   
