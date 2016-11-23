    <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >
  <h2>Listado de Divisiones</h2>
  </div>
  </div>
    <div class="row" style="background-color:white;
                          padding-top:10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >

 <label class="col-sm-2">Buscar División:</label>
 <div class="col-sm-4">   
 <input type="text" class="form-control" id="cadenaDivision" name="cadenaDivision" value="{$cadena}">
</div>
  
</div>
</div>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  
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
</div>
<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">



  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 33%;
    float: left;">Id</th>
        <th style="width: 33%;
    float: left;">Nombre</th>
        <th style="width: 33%;
    float: left;">Acción</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 200px; width:100%">
      {foreach from=$divisiones item=division}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$division->id}    </td>
        <td style="width: 33%;    float: left;" >{$division->nombre|upper}-{$division->deporte|upper}-{$division->sexo|upper}</td>
        <td style="width: 33%;    float: left;"><img name="{$division->id}" id="imgMostarActualizarDivision" src="img/editar.png" align="CENTER" style="cursor:pointer">
            <img name="{$division->id}" id="imgMostrarEliminarDivision"  src="img/eliminar.png" align="CENTER" style="cursor:pointer"/>
            <img name="{$division->id}" id="imgMostrarConsultarDivision"  src="img/consultar.png" align="CENTER" style="cursor:pointer"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>




