  <h2>Listado de Pacientes</h2>

  <label class="col-sm-2">Buscar Paciente:</label>
  <div class="col-sm-4">
      <input type="text" class="form-control" id="cadenaPaciente" name="cadenaPaciente" value="{$cadenaPaciente}" title="Ingrese un Paciente"  pattern="[A-Za-z]">
  </div>
  <br><br>
  
  <label class="col-sm-2">Seleccione un club:</label>
  <div class="col-sm-4">
      <select name="seleccionClubesModTablaPacientes" class="form-control" id="seleccionClubesModTablaPacientes" title="Seleccion un Club">
 
    {if "ninguno" eq $clubSeleccionado}
    <option label="<--SIN CLUB-->" value="ninguno" selected><--SIN CLUB--></option>
    {else}
    <option label="<--SIN CLUB-->" value="ninguno"><--SIN CLUB--></option>
    {/if}

    {if "todos" eq $clubSeleccionado}
    <option label="<--TODOS-->" value="todos" selected><--TODOS--></option>
    {else}
    <option label="<--TODOS-->" value="todos"><--TODOS--></option>
    {/if}

   {foreach from=$clubes item=club}
   {if $club->id eq $clubSeleccionado}
   <option label="{$club->nombre}" value="{$club->id}" selected>{$club->nombre}</option>
   {else}
   <option label="{$club->nombre}" value="{$club->id}">{$club->nombre}</option>
   {/if}
   {/foreach}
   </select>
  </div>
<br><br>
<label class="col-sm-2">Seleccione una division:</label>
<div class="col-sm-4">  
  <select name="seleccionDivisionesModTablaPacientes" 
          class="form-control" id="seleccionDivisionesModTablaPacientes" title="Seleccione una Division">
  

  {foreach from=$divisiones item=division}
  {if $division->id eq $divisionSeleccionado}
  <option label="{$division->nombre}" value="{$division->id}" selected>{$division->nombre}</option>
  {else}
  <option label="{$division->nombre}" value="{$division->id}">{$division->nombre}</option>
  {/if}
  {/foreach}
  </select>
</div>  

<br><br> 

  <h2>Seleccione un paciente:</h2> 
  <table class="table table-striped header-fixed" style="width: 100%;">
  <tr style="">
   <th style="width: 33%; float: left;">Id</th>
   <th style="width: 33%; float: left;">Nombre</th>
   <th style="width: 33%; float: left;">Accion</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$pacientes item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$paciente->id}    </td>
        <td style="width: 33%;    float: left;" >{$paciente->apellido}  {$paciente->nombre}</td>
        <td style="width: 33%;    float: left;">
          <img name="{$paciente->id}" id="imgSeleccionarPaciente"  src="img/seleccionar.png" align="CENTER"  style="cursor:pointer"/>
          <img name="{$paciente->id}" id="imgMostrarEliminarPaciente"  src="img/eliminar.png" align="CENTER"  style="cursor:pointer"/>
          <img name="{$paciente->id}" id="imgMostrarConsultarPaciente"  src="img/consultar.png" align="CENTER"  style="cursor:pointer"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>

