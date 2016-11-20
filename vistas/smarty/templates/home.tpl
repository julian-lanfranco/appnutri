<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sistema de Gestion de Nutricion</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="\appnutri\lib\bootstrap\css\bootstrap.min.css">
    <script src="\appnutri\lib\jquery-1.12.4.min.js"></script>
</head>
<body>
<div class="container-fluid" style="background-color:white;
                          padding-top: 1px;
                          padding-right: 1px;
                          padding-bottom: 1px;
                          padding-left: 1px;
                          margin: 1px;">
  <div class="row">
    <div class="col-md-12" style="">
      <div class="row" style="text-align:center;">
        <h4>GnUtri V1.0</h4>
      </div>
  </div>
</div>

  <div class="row">
  <div class="col-sm-2 " style="background-color:lavender;">

  <div class="panel-group" id="accordion">

      <div class="panel panel-default" style="background-color:white;">
         <div class="panel-heading">
             <a data-toggle="collapse" data-parent="#accordion" href="#collapse8"><h4>Bienvenido: {$usuario}</h4></a>
         </div>
         <div id="collapse8" class="panel-collapse collapse">
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
          <span lang="es-ar">&nbsp;</span><a href="#" id="btnMostrarTablaPacientes">Paciente</a><br>
          <span lang="es-ar">&nbsp;</span><a href="#" id="btnMostrarTablaAnamnesis">Anamnesis</a><br>
          <span lang="es-ar">&nbsp;</span><a href="#" id="btnlistarMedicionAntro">Mediciones</a><br>
          <span lang="es-ar">&nbsp;</span><a href="#" id="btnlistarEstudioLaboratorio">Estudios</a><br>
          <span lang="es-ar">&nbsp;</span><a href="#" id="btnlistarRecordatorio24">Recordatorios</a><br>
          <span lang="es-ar">&nbsp;</span><a href="#" id="btnlistarPlanes">Planes</a>
      </div>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Clubes</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse ">
      	<span lang="es-ar">&nbsp;</span><a href="#" id="btnMostrarNuevoClub">Nuevo Clubes</a><br>
      	<span lang="es-ar">&nbsp;</span><a href="#" id="btnMostrarTablaClubes">Listar Clubes</a> 
       
      </div>
      </div>
   

    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <span lang="es-ar">&nbsp;</span><a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Divisiones</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
      	<span lang="es-ar">&nbsp;</span><a href="#" id="btnMostrarTablaDivisiones">Listar Divisiones</a><br>
      	<span lang="es-ar">&nbsp;</span><a href="#" id="btnMostrarNuevoDivision">Nueva Division</a> <br>
      	<span lang="es-ar">&nbsp;</span><a href="#" id="btnMostrarMigrarJugadores">Migracion de Jugadores</a>

      </div>
    </div>


      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <span lang="es-ar">&nbsp;</span>

          <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">Respaldos</a>
      </div>
      
      <div id="collapse10" class="panel-collapse collapse">

            <a href="#" id="btnCrearRespaldo">Crear Respaldo</a> <br>
            <a href="#" id="btnMostrarSubirRespaldo">Subir Respaldo</a> <br>  
            <a href="#" id="btnListarRespaldos">Listar Respaldos</a> <br>  
      </div>
    </div>  
  </div>
</div>


    <div class="col-md-10" style="background-color:lavender;">
    
    <div id="pacienteSeleccionado" hidden="">

      <div class="row" style="background-color:white;
                          padding-top: 20px;
                          padding-right: 10px;
                          padding-bottom: 20px;
                          padding-left: 10px;
                          margin: 10px;">

     
      <label class="col-sm-1">Nombre </label>
      <div class="col-sm-3">
      <input type="hidden" class="form-control" id="idPaciente" value="Seleccione un paciente"" disabled="true">
      <input type="text" class="form-control" id="nombrePaciente" value="Seleccione un paciente"" disabled="true">
      </div>
      
      <label class="col-sm-1">Division </label>   
      <div class="col-sm-2">
      <input type="text" class="form-control" id="nombreDivision" value="-" disabled="true">
      </div>

      <label class="col-sm-1">Club</label>   
      <div class="col-sm-2">
      <input type="text" class="form-control" id="nombreclub" value="-" disabled="true">
      </div>

    </div>
    </div>

     <div id="central">
      </div>
    </div>
  </div>
</div>
  <script src="\appnutri\lib\bootstrap\js\bootstrap.min.js"></script>
  <script type="text/javascript" src="js/funciones.js"></script>
</body>
</html>