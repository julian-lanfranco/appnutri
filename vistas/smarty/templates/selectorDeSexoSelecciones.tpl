<div class="col-sm-2">
<select name="seleccionSexoSeleccionesModPacientes" class="form-control" id="seleccionSexoSeleccionesModPacientes">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$sexos item=sexo}
    <option label="{$sexo}"  value="{$sexo}">{$sexo|upper}</option>/>
    {/foreach}
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

