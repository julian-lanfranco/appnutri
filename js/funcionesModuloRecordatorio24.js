//Funciones Js del Modulo Recordatorios


$("#central").on("click", "#imgMostarActualizarRecordatorio24", function(){
        
         recordatorio = $(this).attr('name');
         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                        data: "accion=mostrarActualizarRecordatorio24&idRecordatorio24="+recordatorio,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });

        $("#central").on("click", "#imgMostrarEliminarRecordatorio24", function(){
        recordatorio = $(this).attr('name');
         var idPaciente=$("#idPaciente").val();
             if (confirm("Esta seguro que desea eliminar el Recordatorio ?"))
        
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                data: "accion=eliminarRecordatorio24&idPaciente="+idPaciente+"&idRecordatorio24="+recordatorio,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });



        $("#central").on("click", "#imgMostrarConsultarRecordatorio24", function(){
        
         recordatorio = $(this).attr('name');
        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                data: "accion=consultarRecordatorio24&idRecordatorio="+recordatorio,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });

        $("#central").on("click", "#imgMostrarEstadisticaRecordatorio24", function(){
        
         recordatorio = $(this).attr('name');
        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                data: "accion=mostrarEstadisticaRecordatorio24&idRecordatorio="+recordatorio,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });




        $("#central").on("click", "#btnActualizarRecordatorio24", function(){
        
     		
    		    var idRecordatorio=$("#idRecordatorio").val();
                var idPaciente=$("#idPaciente").val();
                var horadespertado=$("#horadespertado").val();
                var horadesayuno=$("#horadesayuno").val();
                var desayuno=$("#desayuno").val();
                var horamediamanana=$("#horamediamanana").val();
                var mediamanana=$("#mediamanana").val();
                var horaalmuerzo=$("#horaalmuerzo").val();
                var almuerzo=$("#almuerzo").val();
                var horamerienda=$("#horamerienda").val();
                var merienda=$("#merienda").val();
                var horacolacion=$("#horacolacion").val();
                var colacion=$("#colacion").val();
                var horacena=$("#horacena").val();
                var cena=$("#cena").val();
                var horadormido=$("#horadormido").val();
                
                 if (confirm(" Esta seguro que desea modificar los datos de - > id: "+idRecordatorio+" ?"))
                 {
                             $.ajax({
                                           type: "POST",
                                            url: "http://"+ambito+"/appnutri/",
                                            data:{  accion:"btnActualizarRecordatorio24",
                                                    idRecordatorio:idRecordatorio,
                                                    horadespertado: horadespertado,
                                                    horadesayuno: horadesayuno,
                                                    desayuno: desayuno,
                                                    horamediamanana: horamediamanana,
                                                    mediamanana:mediamanana,
                                                    horaalmuerzo: horaalmuerzo,
                                                    almuerzo: almuerzo,
                                                    horamerienda: horamerienda,
                                                    merienda: merienda,
                                                    horacolacion:horacolacion,
                                                    colacion:colacion,
                                                    horacena: horacena,
                                                    cena: cena,
                                                    horadormido:horadormido,
                                                    paciente:idPaciente,
                                                    modulo:"recordatorio24"},

                                            success: function(c) {
                                                                    $('#central').html(c); 
                                                                    }

                                        });
                }


        });


        $("#central").on("click", "#btnCancelarActualizarRecordatorio24", function(){
        var idPaciente=$("#idPaciente").val();
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                data: "accion=mostrarTablaRecordatorio24&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });





        $("#central").on("click", "#btnCancelarCrearRecordatorio24", function(){       

                 var idPaciente =$("#idPaciente").val();
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                data: "accion=mostrarTablaRecordatorio24&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                    }

                            });
        
        });


        $("#central").on("click", "#btnImprimirConsultaRecordatorio24", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=recordatorio24";
            var idRecordatorio=$("#idRecordatorio").val();

             if (confirm(" Esta seguro que desea imprimir recordatorio :"+idRecordatorio+"  ?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=recordatorio24&accion=imprimirConsultaRecordatorio24&idRecordatorio="+idRecordatorio);
            
            }
        });


        $("#central").on("click", "#btnVolverConsultaRecordatorio24", function(){
        var idPaciente=$("#idPaciente").val();
        
                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                data: "accion=mostrarTablaRecordatorio24&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });
        
        });
    
                $("#central").on("change", "#seleccionClubesModTablaRecordatorio24", function(){
        
                var idClub=$("#seleccionClubesModTablaRecordatorio24").val();

                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });
        });                

    $("#central").on("change", "#seleccionDivisionesModTablaRecordatorio24", function(){
        
                var idClub=$("#seleccionClubesModTablaRecordatorio24").val();
                var idDivision=$("#seleccionDivisionesModTablaRecordatorio24").val();


                        $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                        data: "accion=mostrarTablaPacientes&idClub="+idClub+"&idDivision="+idDivision,
                        success: function(a) {

                                            $('#central').html(a); 
                                             }
                        });

        
        });
                        
   $("#central").on("click", "#imgMostarNuevoRecordatorio24", function(){
                            var idPaciente = $(this).attr('name');
               
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                        data: "accion=mostrarNuevoRecordatorio24&idPaciente="+idPaciente,

                                        success: function(b) {  
                                                            $('#central').html(b); 
                                                            }
                                });
                                
                
    

        });                     
                        
                        
 
           




           $("#central").on("click", "#imgMostrarTablaRecordatorio24", function(){
        
         var idPaciente = $(this).attr('name');

        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=recordatorio24",
                                data: "accion=mostrarTablaRecordatorio24&idPaciente="+idPaciente,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });


        });  

        
                        