<div class="col-sm-2">
    <select name=seleccionDeportesModPacientes class="form-control" id="seleccionDeportesModPacientes">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$deportes item=deporte}
    <option label="{$deporte}"  value="{$deporte}">{$deporte|upper}</option>/>
    {/foreach}
</select>
</div>
<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexo>
<div class="col-sm-2">
    <select name=seleccionDivisionesModPacientes class="form-control" id="seleccionDivisionesModPacientes">
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



<label class="col-sm-1">División:</label>
<div id=seelctorDeDivisiones>
<div class="col-sm-2">
    <select name=seleccionDivisionesModPacientes class="form-control" id="seleccionDivisionesModPacientes">
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
