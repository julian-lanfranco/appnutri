<h2>Listado de Recordatorios 24 hs </h2>

  <p>Seleccione un club:</p> 
  <select name="seleccionClubesModTablaRecordatorio24" class="form-control" id="seleccionClubesModTablaRecordatorio24">
  <option label="<--TODOS-->" value="defecto">todos</option>
  {foreach from=$clubes item=club}
  {if $club->id eq $clubSeleccionado}
  <option label="{$club->nombre}" value="{$club->id}" selected>{$club->nombre}</option>
  {else}
  <option label="{$club->nombre}" value="{$club->id}">{$club->nombre}</option>
  {/if}
  {/foreach}
  </select>
 

  <p>Seleccione una division:</p> 
  <select name="seleccionDivisionesModTablaRecordatorio24" 
                class="form-control" id="seleccionDivisionesModTablaRecordatorio24">
  <option label="<--TODOS-->" value="defecto">todos</option>
  {foreach from=$divisiones item=division}
  {if $division->id eq $divisionSeleccionado}
  <option label="{$division->nombre}" value="{$division->id}" selected>{$division->nombre}</option>
  {else}
  <option label="{$division->nombre}" value="{$division->id}">{$division->nombre}</option>
  {/if}
  {/foreach}
  </select>
  

<br>
  <p>Seleccione un paciente:</p> 
  <table class="table table-striped header-fixed" style="width: 100%;">
  <tr style="">
   <th style="width: 33%; float: left;">Id</th>
   <th style="width: 33%; float: left;">Nombre</th>
   <th style="width: 33%; float: left;">Accion</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$pacientes item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$paciente->id} </td>
        <td style="width: 33%;    float: left;" >{$paciente->nombre}</td>
        <td style="width: 33%;    float: left;">
          <img name="{$paciente->id}" id="imgMostarNuevoRecordatorio24" src="img/nuevo.png" align="CENTER">
          <img name="{$paciente->id}" id="imgMostrarTablaRecordatorio24"  src="img/consultar.png" align="CENTER"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
