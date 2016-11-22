
<div id=busqueda>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                           margin: 10px;">

  <label class="col-sm-2">Buscar Paciente:</label>
  <div class="col-sm-2">
  <input type="text" class="form-control" id="pacienteNombre" name="pacienteNombre"  title="Ingrese un Paciente"  pattern="[A-Za-z]">
  </div>

<label class="col-sm-1">Dni:</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="pacienteDni" name="pacienteDni" title="Ingrese un Dni">
  </div>

  <label class="col-sm-1">Sexo:</label>
  <div class="col-sm-2">
    <select name="pacienteSexo" class="form-control" id="pacienteSexo" title="Seleccion un Sexo">
    <option  value="todos" selected>TODOS</option>
    <option  value="masculino">MASCULINO</option>
    <option  value="femenino">FEMENINO</option>
   </select>
  </div>
  <input type="checkbox" name="clubChk" id="clubChk" value="true" checked >Posee club?<br>
  </div>

  <div id=filtros>
  <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

  <label class="col-sm-1">Club:</label>
  <div class="col-sm-2">
      <select name="filtroClub" class="form-control" id="filtroClub" title="Seleccion un Club">
    <option  value="todos" selected>TODOS</option>  
     <option  value="ninguno" hidden>NINGUNO</option>     
   {foreach from=$clubes item=club}
   <option label="{$club->nombre}" value="{$club->id}">{$club->nombre}</option>
   {/foreach}
   </select>
  </div>

<label class="col-sm-1">Division:</label>
<div class="col-sm-2" >  
  <select name="filtroDivision" class="form-control" id="filtroDivision" title="Seleccione una Division">
    <option  value="todos" selected>TODOS</option>  
  {foreach from=$divisiones item=division}
  <option value="{$division}">{$division|upper}</option>
  {/foreach}
  </select>
</div>

<label class="col-sm-1">Deporte:</label>
<div class="col-sm-2">  
  <select name="filtroDeporte" class="form-control" id="filtroDeporte" title="Seleccione una Division">
  <option  value="todos" selected>TODOS</option>  
  {foreach from=$deportes item=deporte}
  <option value="{$deporte->nombre}">{$deporte->nombre|upper}</option>
  {/foreach}
  </select>
</div> 

<label class="col-sm-1">Sexo:</label>
<div class="col-sm-2">  
  <select name="filtroSexo" class="form-control" id="filtroSexo" title="Sexo">
   <option value="todos" selected>TODOS</option> 
  <option value="femenino">FEMENINO</option>
  <option value="masculino">MASCULINO</option>
  </select>
</div>     
</div>
</div> 
</div>

  <div id=resultado>

  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
   <h2>Listado de Pacientes</h2>
  </div>

  <div div class="col-md-2">
  <img name="{$paciente->id}" id="imgMostrarNuevoPaciente"  src="img/nuevo.png" align="right"  style="cursor:pointer" height="80" width="80" title="Nuevo Paciente"/>
  </div>
  </div>
  
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 0px;
                          padding-bottom: 0px;
                          padding-left: 00px;
                          margin: 10px;">

  <table class="table  header-fixed" style="width: 100%;">
  <tr>
   <th style="width: 25%; float: left;text-align: center;">Nombre</th>
   <th style="width: 25%; float: left;text-align: center;">DNI</th>
   <th style="width: 50%; float: left;text-align: center;">Accion</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 350px; width:100%">
      {foreach from=$pacientes item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 25%;    float: left;" >{$paciente->apellido}  {$paciente->nombre}</td>
        <td style="width: 25%;    float: left;" >{$paciente->dni}</td>
        <td style="width: 50%;    float: left;">
          <img name="{$paciente->id}" id="imgSeleccionarPaciente"  src="img/seleccionar.png" align="CENTER"  style="cursor:pointer" title="Seleccionar Paciente"/>
          <img name="{$paciente->id}" id="imgMostrarEditarPaciente"  src="img/consultar.png" align="CENTER"  style="cursor:pointer" title="consultar Paciente"/>
          <img name="{$paciente->id}" id="imgMostrarEliminarPaciente"  src="img/eliminar.png" align="CENTER"  style="cursor:pointer" title="Eliminar Paciente"/>

        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>
  </div>


