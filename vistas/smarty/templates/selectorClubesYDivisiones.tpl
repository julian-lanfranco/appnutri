
<div class="col-sm-4" >

    <select name="seleccionClubesModPacientes" class="form-control" id="seleccionClubesModPacientes" required>
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$clubes item=club}
    {if $club->id eq $clubSeleccionado}
    <option label="{$club->nombre}" value="{$club->id}" selected>{$club->nombre}</option>

    {else}
    <option label="{$club->nombre}" value="{$club->id}">{$club->nombre}</option>
    {/if}
    {/foreach}
</select> 
</div>


<br><br>
<label class="col-sm-2">División:</label>
<div class="col-sm-4">
    <select name=seleccionDivisionesModPacientes class="form-control" id="seleccionDivisionesModPacientes" required>
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
