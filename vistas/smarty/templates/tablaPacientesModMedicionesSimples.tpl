<h2>Listado de Mediciones Simples</h2>

  <p>Seleccione un club:</p> 
  <select name="seleccionClubesModTablaMedicionesSimples" class="form-control" id="seleccionClubesModTablaMedicionesSimples">
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
  <select name="seleccionDivisionesModTablaMedicionesSimples" 
                class="form-control" id="seleccionDivisionesModTablaMedicionesSimples">
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
  <p>Seleccione una paciente:</p> 
  <table class="table table-striped header-fixed" style="width: 100%;">
  <tr style="">
   <th style="width: 33%; float: left;">Id</th>
   <th style="width: 33%; float: left;">Nombre</th>
   <th style="width: 33%; float: left;">Accion</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 200px; width:100%">
      {foreach from=$pacientes item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$paciente->id} </td>
        <td style="width: 33%;    float: left;" >{$paciente->nombre}</td>
        <td style="width: 33%;    float: left;">
          <img name="{$paciente->id}" id="imgMostarNuevoMedicionesSimples" src="img/nuevo.png" align="CENTER" style="cursor:pointer"/>
          <img name="{$paciente->id}" id="imgMostrarListarMedicionesSimples"  src="img/consultar.png" align="CENTER" style="cursor:pointer"/>
          <img name="{$paciente->id}" id="imgMostrarEstadisticaMedicionesSimples"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer"/>
          <img name="{$paciente->id}" id="imgImprimirEstadisticaMedicionesSimples"  src="img/imprimir.png" align="JUSTIFY" style="cursor:pointer"/>

        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>





