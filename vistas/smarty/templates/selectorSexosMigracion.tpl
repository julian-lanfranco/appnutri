<div class="col-sm-2">
    <select name=seleccionSexoOrigen class="form-control" id="seleccionSexoOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>

    {foreach from=$sexos item=sexo}

    <option label="{$sexo}"  value="{$sexo}">{$sexo|upper}</option>
    {/foreach}

</select>
</div>


<label class="col-sm-1">División:</label>
<div id=selectorDeDivisionesOrigen>
<div class="col-sm-2">
    <select name=seleccionDivisionesOrigen class="form-control" id="seleccionDivisionesOrigen">
    {foreach from=$divisiones item=division}
    <option label="{$division->nombre}"  value="{$division->id}">{$division->nombre}-{$division->deporte|upper}</option>
    {/foreach}
</select>
</div>
</div>



