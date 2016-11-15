  <h2>Listado de Mediciones Simples</h2>

 <label>Paciente: {$nombre}</label>

  <p>Seleccione una Medicion para cualquier consulta:</p> 
  
<input type="hidden" class="form-control" id="idPaciente" value="{$paciente}">

  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
      <th style="width: 33%;
    float: left;">Id</th>
        <th style="width: 33%;
    float: left;">Fecha de alta</th>
        <th style="width: 33%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$mediciones item=medi}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" > {$medi->id}    </td>
        <td style="width: 33%;    float: left;" > {$medi->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 33%;    float: left;"><img name="{$medi->id}" id="imgMostarActualizarMedicionSimple" src="img/editar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35">
            <img name="{$medi->id}" id="imgMostrarEliminarMedicionesSimples"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
            <img name="{$medi->id}" id="imgMostrarConsultarMedicionesSimples"  src="img/consultar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
            

        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>




