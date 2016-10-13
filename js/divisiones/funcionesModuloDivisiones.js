//Funciones Js del Modulo Clubes


$("#central").on("click", "#imgMostarActualizarDivision", function(){
        
         var idDivision = $(this).attr('name');
         var idClub=$("#seleccionClubes").val();

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                        data:"accion=mostrarActualizarDivision&idDivision="+idDivision+"&idClub="+idClub,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });

        $("#central").on("click", "#imgMostrarEliminarDivision", function(){
        
        var idDivision = $(this).attr('name');
        var idClub=$("#seleccionClubes").val();
                 if (confirm("Esta seguro que desea eliminar la Division "+idDivision+" del club "+idClub))
                 {
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                                        data: "accion=eliminarDivision&idDivision="+idDivision+"&idClub="+idClub,

                                        success: function(b) {
                                                            $('#central').html(b); 
                                                            }
                                });
                }
    

        });



        $("#central").on("click", "#imgMostrarConsultarDivision", function(){
        
         var idDivision = $(this).attr('name');
        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                                data: "accion=consultarDivision&idDivision="+idDivision,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });



    



        


        $("#central").on("click", "#btnCancelarActualizarDivision", function(){
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                                data: "accion=mostrarTablaDivisiones",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });


        $("#central").on("change", "#cadenaDivision", function(){
        
                var cadenaDivision=$("#cadenaDivision").val();
                var idClub=$("#seleccionClubes").val();


                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=divisiones&cadenaDivision="+cadenaDivision+
                                "&idClub="+idClub,
                                data: "accion=buscarDivisionesPorCadena",
                                success: function(a) {

                                                    $('#central').html(a); 

                                                    var textbox = document.getElementById("cadenaDivision");

                                                    textbox.focus();


                                                  

                                                        }

                            });



        
        });


        $("#central").on("change", "#seleccionClubes", function(){
        
                var idClub=$("#seleccionClubes").val();
                
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=divisiones&idClub="+idClub,
                                data: "accion=buscarDivisionesPorClub",
                                success: function(a) {
                                                    $('#central').html(a); 

                                                        }

                            });
        
        });



        $("#central").on("click", "#btnCancelarCrearDivision", function(){       

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                                data: "accion=mostrarTablaDivisiones",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                    }

                            });
        
        });


        $("#central").on("click", "#btnImprimirConsultaDivision", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=divisiones";
            var idDivision=$("#idDivision").val();

             if (confirm(" Esta seguro que desea imprimir la division :"+idDivision+"  ?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=divisiones&accion=imprimirConsultaDivision&idDivision="+idDivision);
            
            }
        });


        $("#central").on("click", "#btnVolverConsultaDivision", function(){
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=divisiones",
                                data: "accion=mostrarTablaDivisiones",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        


            });