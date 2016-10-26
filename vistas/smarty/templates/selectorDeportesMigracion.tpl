<div class="col-sm-2">
    <select name=seleccionDeportesOrigen class="form-control" id="seleccionDeportesOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$deportes item=deporte}
    <option label="{$deporte}"  value="{$deporte}">{$deporte|upper}</option>/>
    {/foreach}
</select>
</div>
<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoOrigen>
<div class="col-sm-2">
    <select name="seleccionSexoOrigen" class="form-control" id="seleccionSexoOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$sexos item=sexo}
    {if $sexo eq $sexoSeleccionado}
    <option label="{$sexo}"  value="{$sexo}" selected>{$sexo|upper}</option>
    {else}
    <option label="{$sexo}"  value="{$sexo}">{$sexo|upper}</option>
    {/if}
    {/foreach}
</select>
</div>

<label class="col-sm-1">Division:</label>
<div id=selectorDeDivisionesOrigen>
<div class="col-sm-2">
    <select name=selectorDeDivisionesOrigen class="form-control" id="selectorDeDivisionesOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$divisiones item=division}
    {if $division->id eq $divisionSeleccionado}
    <option label="{$division->nombre}"  value="{$division->id}" selected>{$division->nombre}-{$division->deporte|upper}</option>
    {else}
    <option label="{$division->nombre}"  value="{$division->id}">{$division->nombre}-{$division->deporte|upper}</option>
    {/if}
    {/foreach}
</select>
</div>
</div>
</div>
</div>
