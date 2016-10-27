//Funciones Js del Modulo Mediciones Antropometricas


//Boton cancelar, formulario de actualizacion de medicions antropometrica
$("#central").on("click", "#btnCancelarModMedicionAntropometricas", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                data: "accion=listarMedicionesAntropometricas&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });

//Boton cancelar, formulario de creacion de medicions antropometrica
$("#central").on("click", "#btnCancelarCrearMedicionAntropometricas", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                data: "accion=listarMedicionesAntropometricas&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });

//Boton cancelar, del formulario grafica medicion antropometrica
$("#central").on("click", "#btnCancelarGraficaMedicionAntropometricas", function(){
        
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                data: "accion=listarMedicionesAntropometricas&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });

//Boton editar, en la tabla que lista todas las mediciones antropometricas 
$("#central").on("click", "#imgMostarActualizarMedicionAntro", function(){
        
            var idMedicionAntro = $(this).attr('name');

         $.ajax({
                        type: "GET",
                        url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                        data:"accion=mostrarActualizarMedicionAntro&idMedicionAntro="+idMedicionAntro,

                        success: function(b) {
                                            $('#central').html(b); 
                                                }
                    });

         });


       

//Boton eliminar, en la tabla que lista todas las mediciones antropometricas
        $("#central").on("click", "#imgMostrarEliminarMedicionesAntro", function(){
        
        var idPaciente=$("#idPaciente").val();
        var idMedicionAntro = $(this).attr('name');


                 if (confirm("Esta seguro que desea eliminar la Medicion Antropometrica "+idMedicionAntro))
                 {
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                        data: "accion=eliminarMedicionAntro&idMedicionAntro="+idMedicionAntro+"&idPaciente="+idPaciente,

                                        success: function(b) {
                                                            $('#central').html(b); 
                                                            }
                                });
                }
    

        });




//Boton consultar, de la tabla que lista las mediciones antropometricas
        $("#central").on("click", "#imgMostrarConsultarMedicionesAntro", function(){
        
                    var idMedicionAntro = $(this).attr('name');


                
                            $.ajax({
                                        type: "GET",
                                        url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                        data: "accion=mostrarConsultarMedicionAntro&idMedicionAntro="+idMedicionAntro,

                                        success: function(b) {  
                                                            $('#central').html(b); 
                                                            }
                                });
                                
                
    

        });

            
 //Boton cancelar, del formulario que consulta las medicion antropometrica           
            $("#central").on("click", "#btnCancelarImprimirMedicionAntro", function(){
                 var idPaciente =$("#idPaciente").val();

                 $.ajax({
                               
                            type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                data: "accion=listarMedicionesAntropometricas&idPaciente="+idPaciente,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });



                   });
                   
                   
 //Boton imprimir, del formulario que consulta la medicion antropometrica  
       $("#central").on("click", "#btnImprimirMedicionAntro", function(){
        
            var url = "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas";

            var idMedicionAntro=$("#idMedicionAntro").val();

             if (confirm(" Esta seguro que desea imprimir la Medicion :"+idMedicionAntro+"  ?"))
            {
       
            window.open ("http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas&accion=imprimirConsultaMedicionAntro&idMedicionAntro="+idMedicionAntro);
            
            }
        });                       



//Cuando se produce el cambio en la fecha hasta 

        $("#central").on("change", "#seleccionFechaHasta", function(){
        
                var fechaDesde=$("#seleccionFechaDesde").val();
                var fechaHasta=$("#seleccionFechaHasta").val();
                
                if(!fechaDesde){
                    alert("Es necesario que seleccione la fecha desde");
                    document.getElementById('btnGraficaMedicionAntropometricas').disabled=true;    
                  }
                  else{  
                    if(fechaDesde >= fechaHasta){
                        alert("La fecha desde no puede ser mayor o igual a la fecha hasta");
                        document.getElementById('btnGraficaMedicionAntropometricas').disabled=true;
                      }
                      else{
                        document.getElementById('btnGraficaMedicionAntropometricas').disabled=false;
                      }
                   }
     });

//Cuando se produce un cambio en la fecha desde 
    $("#central").on("change", "#seleccionFechaDesde", function(){
         document.getElementById('seleccionFechaHasta').value= '';
});

        







   
