  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
  </div>
  <div div class="col-md-2">
  <img name="{$paciente->id}" id="imgMostrarNuevoPaciente"  src="img/nuevo.png" align="right"  style="cursor:pointer" height="80" width="80"/>
  </div>
  </div>
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 0px;
                          padding-bottom: 0px;
                          padding-left: 00px;
                          margin: 10px;">

  <table class="table  header-fixed table-hover" style="width: 100%;">
  <tr>
   <th style="width: 25%; float: left;text-align: center;">Nombre</th>
   <th style="width: 25%; float: left;text-align: center;">DNI</th>
   <th style="width: 50%; float: left;text-align: center;">Accion</th>
  </tr>
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$pacientes item=paciente}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 25%;    float: left;text-align: center;" >{$paciente->apellido}  {$paciente->nombre}</td>
        <td style="width: 25%;    float: left;text-align: center;" >{$paciente->dni}</td>
        <td style="width: 50%;    float: left;text-align: center;">
          <img name="{$paciente->id}" id="imgSeleccionarPaciente"  src="img/seleccionar.png" align="CENTER"  style="cursor:pointer" height="30" width="30"/>
          <img name="{$paciente->id}" id="imgMostrarEditarPaciente"  src="img/consultar.png" align="CENTER"  style="cursor:pointer" height="30" width="30"/>
          <img name="{$paciente->id}" id="imgPdfPaciente"  src="img/pdf.png" align="CENTER"  style="cursor:pointer" height="30" width="30"/>
          <img name="{$paciente->id}" id="imgMostrarEliminarPaciente"  src="img/eliminar.png" align="CENTER"  style="cursor:pointer" height="30" width="30"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>
