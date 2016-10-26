
<div class="col-sm-2">
    <select name=seleccionDivisionesOrigen class="form-control" id="seleccionDivisionesOrigen">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$divisiones item=division}
    <option label="{$division->nombre}"  value="{$division->id}">{$division->nombre|upper}</option>
    {/foreach}
</select>
</div>
</div>


