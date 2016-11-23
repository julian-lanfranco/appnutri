<div class="col-sm-2">
    <select name=seleccionSexoDestino class="form-control" id="seleccionSexoDestino">
    <option label="ninguno" value="ninguno">Ninguno</option>

    {foreach from=$sexos item=sexo}

    <option label="{$sexo}"  value="{$sexo}">{$sexo|upper}</option>
    {/foreach}

</select>
</div>


<label class="col-sm-1">División:</label>
<div id=selectorDeDivisionesDestino>
<div class="col-sm-2">
    <select name=seleccionDivisionesDestino class="form-control" id="seleccionDivisionesDestino">
    {foreach from=$divisiones item=division}
    <option label="{$division->nombre}"  value="{$division->id}">{$division->nombre}-{$division->deporte|upper}</option>
    {/foreach}
</select>
</div>
</div>



