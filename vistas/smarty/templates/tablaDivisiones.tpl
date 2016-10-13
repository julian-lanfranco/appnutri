  <h2>Listado de Divisiones</h2>

 <label class="col-sm-2">Buscar Division:</label>
 <div class="col-sm-4">   
 <input type="text" class="form-control" id="cadenaDivision" name="cadenaDivision" value="{$cadena}">
</div>
  
  <br><br>
  
  <label class="col-sm-2">Seleccione un club:</label>
  <div class="col-sm-4">  
<select name="seleccionClubes" class="form-control" id="seleccionClubes">
    <option label="<--TODOS-->" value="defecto">todos</option>
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


  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 33%;
    float: left;">Id</th>
        <th style="width: 33%;
    float: left;">Nombre</th>
        <th style="width: 33%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$divisiones item=division}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$division->id}    </td>
        <td style="width: 33%;    float: left;" >{$division->nombre}</td>
        <td style="width: 33%;    float: left;"><img name="{$division->id}" id="imgMostarActualizarDivision" src="img/editar.png" align="CENTER" style="cursor:pointer">
            <img name="{$division->id}" id="imgMostrarEliminarDivision"  src="img/eliminar.png" align="CENTER" style="cursor:pointer"/>
            <img name="{$division->id}" id="imgMostrarConsultarDivision"  src="img/consultar.png" align="CENTER" style="cursor:pointer"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>




