
  <h4>Seleccione un paciente:</h4> 
  <div style="text-align: center">
  <img name="{$paciente->id}" id="imgMostrarNuevoPaciente"  src="img/nuevo.png" align="CENTER"  style="cursor:pointer" height="80" width="80"/>
  </div>
  <table class="table table-striped header-fixed" style="width: 100%;">
  <tr style="">
   <th style="width: 33%; float: left;">Dni</th>
   <th style="width: 33%; float: left;">Nombre</th>
   <th style="width: 33%; float: left;">Accion</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$pacientes item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$paciente->dni}    </td>
        <td style="width: 33%;    float: left;" >{$paciente->apellido}  {$paciente->nombre}</td>
        <td style="width: 33%;    float: left;">
          <img name="{$paciente->id}" id="imgSeleccionarPaciente"  src="img/seleccionar.png" align="CENTER"  style="cursor:pointer"/>
          <img name="{$paciente->id}" id="imgMostrarEliminarPaciente"  src="img/eliminar.png" align="CENTER"  style="cursor:pointer"/>
          <img name="{$paciente->id}" id="imgMostrarConsultarPaciente"  src="img/consultar.png" align="CENTER"  style="cursor:pointer"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>



