<form  id="migrarJugadores" method="post"> 
<h4>Migracion de Jugadores</h4>
<div class="row">
<div class="col-md-12">
<div class="container-fluid">

<input type="hidden" name="tipo_form" id="tipo_form" value="form_clubes">
<br>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">   

<label class="col-sm-1">Origen:</label>

<div id=selectorDeClubesOrigen>

<div class="col-sm-2">

    <select name="seleccionClubesOrigen" class="form-control" id="seleccionClubesOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$listaClubes item=club}
    {if $club->id eq $clubSeleccionado}
    <option label="{$club->nombre}"  value="{$club->id}" selected>{$club->nombre|upper}</option>
    {else}
    <option label="{$club->nombre}"  value="{$club->id}">{$club->nombre|upper}</option>
    {/if}
    {/foreach}
</select> 
</div>
</div>


<label class="col-sm-1">Deporte:</label>


<div id=selectorDeDeportesOrigen>
<div class="col-sm-2">
    <select name="seleccionDeportesOrigen" class="form-control" id="seleccionDeportesOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>
</div>

<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoOrigen>
<div class="col-sm-2">
    <select name="seleccionSexoOrigen" class="form-control" id="seleccionSexoOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>
</div>

<label class="col-sm-1">Division:</label>
<div id=selectorDeDivisionesOrigen>
<div class="col-sm-2">
    <select name="seleccionDivisionesOrigen" class="form-control" id="seleccionDivisionesOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>
</div>
</div>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">   

<label class="col-sm-1">Destino:</label>

<div id=selectorDeClubesDestino>

<div class="col-sm-2" >
    <select name="seleccionClubesDestino" class="form-control" id="seleccionClubesDestino">
     <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$listaClubes item=club}
    {if $club->id eq $clubSeleccionadoSel}
    <option label="{$club->nombre}"  value="{$club->id}" selected>{$club->nombre|upper}</option>
    {else}
    <option label="{$club->nombre}"  value="{$club->id}">{$club->nombre|upper}</option>
    {/if}
    {/foreach}
</select> 
</div>
</div>

<label class="col-sm-1">Deporte:</label>
<div id=selectorDeDeportesDestino>
<div class="col-sm-2">
    <select name="seleccionDeportesDestino" class="form-control" id="seleccionDeportesDestino">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>
</div>



<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoDestino>
<div class="col-sm-2">
    <select name="seleccionSexoDestino" class="form-control" id="seleccionSexoDestino">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>
</div>



<label class="col-sm-1">Division:</label>
<div id=selectorDeDivisionesDestino>
<div class="col-sm-2">
    <select name="seleccionDivisionesDestino" class="form-control" id="seleccionDivisionesDestino">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>
</div>
</div>
  <p>Seleccione Jugadores a migrar:</p> 
  <div id=listadoJugadores>
  
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >
  <table class="table table-striped header-fixed" style="width: 100%;">
  <tr style="">
   <th style="width: 33%; float: left;">Id</th>
   <th style="width: 33%; float: left;">Nombre</th>
   <th style="width: 33%; float: left;">Migrar</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$jugadores item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$paciente->id} </td>
        <td style="width: 33%;    float: left;" >{$paciente->apellido}  {$paciente->nombre}</td>
        <td style="width: 33%;    float: left;">
          <input type="checkbox" name="jugadorMigracion[]" value="{$paciente->id}" id="jugadorMigracion[]" 
          align="CENTER"  style="cursor:pointer"  checked>
          </td>

      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>
  </div>


</div>
    


<div class="form-group" align="center">
    <input id="btnMigrarJugadores"  type="submit" name="Migrar" class="btn btn-default" value="Migrar" />
    <input type="button" id="btnCancelarMigrarJugadores" name="btnCancelarMigrarJugadores" class="btn btn-default" value="Cancelar" />
</div>    

</div>
</div>
</div>

<script type="text/javascript" src="js/pacientes/funcionesModPacientesDinamico.js"> </script>

<script type="text/javascript" src="js/funcionesMigracionJugadoresDinamico.js"></script>
</form>