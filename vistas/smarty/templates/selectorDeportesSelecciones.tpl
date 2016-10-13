<div class="col-sm-2">
    <select name=seleccionDeportesSeleccionModPacientes class="form-control" id="seleccionDeportesSeleccionModPacientes">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$deportes item=deporte}
    <option label="{$deporte}"  value="{$deporte}">{$deporte|upper}</option>/>
    {/foreach}
</select>
</div>
<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoSelecciones>
<div class="col-sm-2">
<select name="seleccionSexoSeleccionesModPacientes" class="form-control" id="seleccionSexoSeleccionesModPacientes">
    <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>



<label class="col-sm-1">Division:</label>
<div id=selectorDeDivisionesSelecciones>
<div class="col-sm-2">
<select name=seleccionDivisionesSeleccionModPacientes class="form-control" id="seleccionDivisionesSeleccionModPacientes">
 <option label="ninguno" value="ninguno">Ninguno</option>
</select>
</div>
</div>
</div>
</div>
