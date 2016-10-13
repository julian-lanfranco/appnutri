//Funciones Js del Modulo Clubes


$("#central").on("click", "#imgMostarActualizarClub", function(){
        
         club = $(this).attr('name');
         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=clubes",
                        data: "accion=mostrarActualizarClub&idClub="+club,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });

        $("#central").on("click", "#imgMostrarEliminarClub", function(){
        
         club = $(this).attr('name');
                 if (confirm("Esta seguro que desea eliminar el Club : "+club+" JUNTO CON EL SE ELIMINARAN TODAS LA DIVISIONES!!"))
                 {
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=clubes",
                                        data: "accion=eliminarClub&idClub="+club,

                                        success: function(b) {
                                                            $('#central').html(b); 
                                                            }
                                });
                }
    

        });



        $("#central").on("click", "#imgMostrarConsultarClub", function(){
        
         club = $(this).attr('name');
        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=clubes",
                                data: "accion=consultarClub&idClub="+club,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });






        $("#central").on("click", "#btnCancelarActualizarClub", function(){
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=clubes",
                                data: "accion=mostrarTablaClubes",
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

             if (confirm(" Esta seguro que desea imprimir club :"+idClub+"  ?"))
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