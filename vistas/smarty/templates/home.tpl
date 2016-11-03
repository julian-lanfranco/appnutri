<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sistema de Gestion de Nutricion</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
  <div class="row">
    <div class="col-sm-12" style="">
 
</div>
</div>
  <div class="row">

  <div class="col-sm-1 " style="background-color:lavender;">

  <div class="panel-group" id="accordion">


      <div class="panel panel-default" style="background-color:lavender;">
         <div class="panel-heading">
             <a data-toggle="collapse" data-parent="#accordion" href="#collapse9"><h4>Bienvenido: {$usuario}</h4></a>
         </div>
         <div id="collapse9" class="panel-collapse collapse">
            <a href="#" id="btnCambiarPassword">Cambiar Contraseña</a> <br>
            <a href="#" id="btnCerrarSesion">Cerrar Sesion</a>  
         </div>
     </div>      
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Pacientes</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <a href="#" id="btnMostrarTablaPacientes">Seleccionar Paciente</a><br>
        <a href="#" id="btnMostrarNuevoPaciente">Nuevo Paciente</a><br>
        <a href="#" id="btnMostrarModificarPaciente">Modificar Paciente</a>     
      </div>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Clubes</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse ">
      <a href="#" id="btnMostrarNuevoClub">Nuevo Clubes</a><br>
      <a href="#" id="btnMostrarTablaClubes">Listar Clubes</a> 
       
      </div>
      </div>
   

    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Divisiones</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
      <a href="#" id="btnMostrarTablaDivisiones">Listar Divisiones</a><br>
      <a href="#" id="btnMostrarNuevoDivision">Nueva Division</a> <br>
      <a href="#" id="btnMostrarMigrarJugadores">Migracion de Jugadores</a>

      </div>
    </div>


    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Anamnesis</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
          <a href="#" id="btnNuevaAnamnesis">Nueva Anamnesis</a> <br>
          <a href="#" id="btnMostrarTablaAnamnesis">Listar Anamnesis</a> 

      </div>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Mediciones Antropometricas</a>
        </h4>
      </div>
      <div id="collapse5" class="panel-collapse collapse">
          <a href="#" id="btnNuevaMedicionAntro">Nueva Med. Antropometricas</a> <br>
          <a href="#" id="btnlistarMedicionAntro">Listar Med. Antropometricas</a> <br>
          <a href="#" id="btnGraficasMedicionAntro">Generar Graficas</a> <br>
      </div>
    </div>

      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Estudios Laboratorio</a>
        </h4>
      </div>
      <div id="collapse6" class="panel-collapse collapse">
          <a href="#" id="btnNuevoEstudioLaboratorio">Nuevo Estudio Laboratorio</a> <br>
          <a href="#" id="btnlistarEstudioLaboratorio">Listar Estudios de Laboratorio</a>  <br>  
      </div>
    </div>

      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">Recordatorio 24</a>
        </h4>
      </div>
      <div id="collapse7" class="panel-collapse collapse">

            <a href="#" id="btnNuevoRecordatorio24">Nuevo Recordatorio 24</a> <br>
            <a href="#" id="btnlistarRecordatorio24">Listar Recordatorio 24</a>  
      </div>
    </div>   


          <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">Planes</a>
        </h4>
      </div>
      <div id="collapse9" class="panel-collapse collapse">

            <a href="#" id="btnNuevoPlan">Nuevo Plan</a> <br>
            <a href="#" id="btnlistarPlanes">Listar Planes</a>  
      </div>
    </div>




       <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">Respaldos</a>
        </h4>
      </div>
      
      <div id="collapse8" class="panel-collapse collapse">

            <a href="#" id="btnCrearRespaldo">Crear Respaldo</a> <br>
            <a href="#" id="btnMostrarSubirRespaldo">Subir Respaldo</a> <br>  
            <a href="#" id="btnListarRespaldos">Listar Respaldos</a> <br>  
      </div>
    </div>  


  </div>


</div>


    <div class="col-sm-10" style="background-color:lavender;">
    
    <div id="pacienteSeleccionado" style="
    border: 5px solid grey;
    padding: 10px;
    margin: 2px;">
    
    <h4>Paciente Seleccionado:</h4>
     
      <label class="col-sm-1">Nombre:</label>
      <div class="col-sm-3">
      <input type="hidden" class="form-control" id="idPaciente" value="Seleccione un paciente"" disabled="true">
      <input type="text" class="form-control" id="nombrePaciente" value="Seleccione un paciente"" disabled="true">
      </div>
      
      <label class="col-sm-1">Division:</label>   
      <div class="col-sm-2">
      <input type="text" class="form-control" id="nombreDivision" value="-" disabled="true">
      </div>

      <label class="col-sm-1">Club:</label>   
      <div class="col-sm-2">
      <input type="text" class="form-control" id="nombreclub" value="-" disabled="true">
      </div>
      
      <br><br>
    </div>

     <div id="central" class="col-sm-10">
      <h4>Pagina principal</h4>
      <p>Contenido de la página principal</p>
      </div>
    </div>
  </div>
</div>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/funciones.js"></script>
</body>
</html>