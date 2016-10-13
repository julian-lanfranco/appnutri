
<div class="col-sm-2">
<select name=seleccionDivisionesSeleccionModPacientes class="form-control" id="seleccionDivisionesSeleccionModPacientes">
     {foreach from=$divisiones item=div}
    <option label="{$div->nombre}"  value="{$div->id}">{$div->nombre|upper}</option>/>
    {/foreach}
</select>
</div>
</div>
</div>
</div>
