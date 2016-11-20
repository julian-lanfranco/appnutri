//Funciones Js del Modulo Planes

$("#central").on("click", "#imgMostrarNuevoPlan", function(){
        
         paciente = $(this).attr('name');
         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=planes",
                        data: "accion=mostrarNuevoPlan&idPaciente="+paciente,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });


        $("#central").on("click", "#imgMostrarEliminarPlan", function(){
        plan = $(this).attr('name');
         var idPaciente=$("#idPaciente").val();
             if (confirm("Esta seguro que desea eliminar el Plan?"))
        
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=planes",
                                data: "accion=eliminarPlan&idPaciente="+idPaciente+"&idPlan="+plan,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });


        $("#central").on("click", "#imgMostrarConsultarPlan", function(){
        plan = $(this).attr('name');
         var idPaciente=$("#idPaciente").val();
        
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=planes",
                                data: "accion=mostrarActualizarPlan&idPaciente="+idPaciente+"&idPlan="+plan,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });


