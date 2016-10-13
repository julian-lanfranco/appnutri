
<div class="col-sm-2">
    <select name=seleccionSexoModPacientes class="form-control" id="seleccionSexoModPacientes">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$sexos item=sexo}

    <option label="{$sexo}"  value="{$sexo}">{$sexo|upper}</option>

    {/foreach}
</select>
</div>


<label class="col-sm-1">Division:</label>
<div id=selectorDeDivisiones>
<div class="col-sm-2">
    <select name=seleccionDivisionesModPacientes class="form-control" id="seleccionDivisionesModPacientes">
    {foreach from=$divisiones item=division}
    <option label="{$division->nombre}"  value="{$division->id}">{$division->nombre}-{$division->deporte|upper}</option>
    {/foreach}
</select>
</div>
</div>


