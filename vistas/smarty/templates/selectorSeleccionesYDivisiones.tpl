
<div class="col-sm-4">
    <select name="seleccionSelModPacientes" class="form-control" id="seleccionSelModPacientes" required>
    <option label="ninguno" value="ninguno">Ninguno</option>

    {foreach from=$selecciones item=seleccion}
    {if $seleccion->id eq $selSeleccionado}
    <option label="{$seleccion->nombre}" value="{$seleccion->id}" selected>{$seleccion->nombre|upper}</option>

    {else}
    <option label="{$seleccion->nombre}" value="{$seleccion->id}">{$seleccion->nombre|upper}</option>
    {/if}
    {/foreach}
</select> 
</div> 
<br><br>
<label class="col-sm-2">División Selección:</label>
<div class="col-sm-4">
    <select name=seleccionSelDivisionesModPacientes class="form-control" id="seleccionSelDivisionesModPacientes" required>
    {foreach from=$selDivisiones item=selDivision}
    {if $selDivision->id eq $idSelDivisionSel}
    <option label="{$selDivision->nombre}"  value="{$selDivision->id}" selected>{$selDivision->nombre}-{$selDivision->deporte|upper}</option>
    {else}
    <option label="{$selDivision->nombre}"  value="{$selDivision->id}">{$selDivision->nombre}-{$selDivision->deporte|upper}</option>
    {/if}
    {/foreach}
</select>
</div>