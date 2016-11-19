//Funciones Js del Modulo Mediciones Antropometricas

//boton para graficar, graficas evolutivas
        $("#central").on("click", "#btnGraficaMedicionAntropometricas", function(){
        var idPaciente =$("#idPaciente").val();
        var seleccionFechaDesde =$("#seleccionFechaDesde").val();
        var seleccionFechaHasta =$("#seleccionFechaHasta").val();
        document.getElementById('seleccionFechaDesde').value= '';
        document.getElementById('seleccionFechaHasta').value= '';
        document.getElementById('btnGraficaMedicionAntropometricas').disabled=true;
         
      window.open ("http://localhost/appnutri/?modulo=medicionesAntropometricas&accion=generarGraficaMedicionAntro&idPaciente="+idPaciente+"&seleccionFechaDesde="+seleccionFechaDesde+"&seleccionFechaHasta="+seleccionFechaHasta);
     
    

        });


//Imagen de grafica para realizar la grafica de la somatocarta
        $("#central").on("click", "#imgMostrarGraficaSomatocarta", function(){
        
         medicion = $(this).attr('name');
         
         window.open ("http://localhost/appnutri/graficas/graficaSomatocarta.php?idMedicion="+medicion);

    

        });
 
//Imagen de grafica para graficar la evolucion de los datos basicos
        $("#central").on("click", "#imgMostrarGraficaEvolutiva", function(){
        
         paciente = $(this).attr('name');
      
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                data: "accion=graficarMedicionesAntropometricas&idPaciente="+paciente,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });
                                
        
   //Imagen para crear una nueva medicion antropometrica     
        $("#central").on("click", "#imgMostrarNuevoMedAntro", function(){
        
         paciente = $(this).attr('name');
        
                 $.ajax({
                                type: "GET",
                                url: "http://"+ambito+"/appnutri/?modulo=medicionesAntropometricas",
                                data: "accion=mostrarNuevoMedicionesAntropometricas&idPaciente="+paciente,

                                success: function(b) {
                                                    $('#central').html(b); 
                                                        }
                            });
     
    

        });
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

        







   
