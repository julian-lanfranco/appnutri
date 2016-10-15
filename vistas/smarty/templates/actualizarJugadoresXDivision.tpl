<h4>Migracion de Jugadores</h4>
<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 500px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >

<form  id="migrarJugadores" method="post">  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

<label class="col-sm-1">Club Origen:</label>

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



<label class="col-sm-1">Deporte:</label>
<div id=selectorDeDeportesOrigen>
<div class="col-sm-2">
    <select name="seleccionDeportesOrigen" class="form-control" id="seleccionDeportesOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>


<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoOrigen>
<div class="col-sm-2">
    <select name="seleccionSexoOrigen" class="form-control" id="seleccionSexoOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
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
</div>
</div>

<br><br><br>

<label class="col-sm-1">Club Destino:</label>

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

<label class="col-sm-1">Deporte:</label>
<div id=selectorDeDeportesDestino>
<div class="col-sm-2">
    <select name="seleccionDeportesDestino" class="form-control" id="seleccionDeportesDestino">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>


<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoDestino>
<div class="col-sm-2">
    <select name="seleccionSexoDestino" class="form-control" id="seleccionSexoDestino">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
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
</div>
</div>
<br><br><br>

  <p>Seleccione Jugadores a migrar:</p> 
  <div id=listadoJugadores>
  <table class="table table-striped header-fixed" style="width: 100%;">
  <tr style="">
   <th style="width: 33%; float: left;">Id</th>
   <th style="width: 33%; float: left;">Nombre</th>
   <th style="width: 33%; float: left;">Migrar</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">

    </tbody>  
  </table>


</div>



<br><br><br>
 <br><br>         


<div class="form-group" align="center">
    <button id="btnMigrarJugadores"  type="submit" form="migrarJugadores" class="btn btn-default">Migrar</button>
    <input type="button" id="btnCancelarMigrarJugadores" name="btnCancelarMigrarJugadores" class="btn btn-default" value="Cancelar" />
</div>    

       </td>
      </tr>
   </tbody>  
  </table> 

<script type="text/javascript" src="js/pacientes/funcionesModPacientesDinamico.js"> </script>
</form>
<script type="text/javascript" src="js/funcionesMigracionJugadoresDinamico.js"></script>
