
<div class="col-sm-2">
    <select name=seleccionDivisionesModPacientes class="form-control" id="seleccionDivisionesModPacientes">

    {foreach from=$divisiones item=division}
    <option label="{$division->nombre}"  value="{$division->id}">{$division->nombre|upper}</option>
    {/foreach}
</select>
</div>
</div>


