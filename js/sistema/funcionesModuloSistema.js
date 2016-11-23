//Funciones Js del Modulo Clubes

        $("#central").on("click", "#btnGenerarRespaldo", function(){

            var detalleRespaldo=$("#detalleRespaldo").val();

        
                 $.ajax({
                               
                            type: "POST",
                                url: "http://"+ambito+"/appnutri/?modulo=sistema&detalleRespaldo="+detalleRespaldo,
                                data: "accion=generarRespaldo",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });



        $("#central").on("change", "#cadenaClub", function(){
        
                var cadenaClub=$("#cadenaClub").val();
               

                    


                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=clubes&cadenaClub="+cadenaClub,
                                data: "accion=buscarClubesPorCadena",
                                success: function(a) {
                                                    $('#central').html(a); 

                                                    var textbox = document.getElementById("cadenaClub");
                                                    textbox.focus();


                                                  

                                                        }

                            });



        
        });

        $("#central").on("click", "#imgEliminarRespaldo", function(){
        
         respaldo = $(this).attr('name');


        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=sistema",
                                data: "accion=eliminarRespaldo&idRespaldo="+respaldo,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });

        

        $("#central").on("click", "#imgRestaurarRespaldo", function(){
        
         respaldo = $(this).attr('name');
        
          
        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=sistema",
                                data: "accion=restaurarRespaldo&idRespaldo="+respaldo,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });



        $("#central").on("click", "#btnCancelarCrearClub", function(){       

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=clubes",
                                data: "accion=mostrarTablaClubes",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                    }

                            });
        
        });


        $("#central").on("click", "#btnImprimirConsultaClub", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=clubes";
            var idClub=$("#idClub").val();

             if (confirm(" Esta seguro qué desea imprimir club :"+idClub+"  ?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=clubes&accion=imprimirConsultaClub&idClub="+idClub);
            
            }
        });


        $("#central").on("click", "#btnVolverConsultaClub", function(){
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=clubes",
                                data: "accion=mostrarTablaClubes",
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        


            });