  

  <table class="table table-striped header-fixed" style="width: 100%;">
  <tr style="">
   <th style="width: 33%; float: left;">Id</th>
   <th style="width: 33%; float: left;">Nombre</th>
   <th style="width: 33%; float: left;">Migrar</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$jugadores item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$paciente->id} </td>
        <td style="width: 33%;    float: left;" >{$paciente->apellido}  {$paciente->nombre}</td>
        <td style="width: 33%;    float: left;">
          <input type="checkbox" name="jugadorMigracion[]" value="{$paciente->id}" id="jugadorMigracion[]" 
          align="CENTER"  style="cursor:pointer"  checked>
          </td>

      </tr>
      {/foreach}
    </tbody>  
  </table>






