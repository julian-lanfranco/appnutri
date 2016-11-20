  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
  <h2>Listado de Anamnesis</h2>
  </div>

  <div div class="col-md-2">
  <img name="{$paciente}" id="imgMostrarNuevoAnamnesis"  src="img/nuevaAnamnesis.png" align="right"  style="cursor:pointer" height="60" width="60"/>
  </div>
  </div>
  
  <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


  <table class="table header-fixed" style="width: 100%;">

  <tr>
  <th style="width: 50%;  float: left;text-align: center;">Fecha de alta</th>
  <th style="width: 50%;  float: left;text-align: center;">Accion</th>
  </tr>

    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$anamnesis item=anam}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 50%;    float: left; text-align: center;" > {$anam->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 50%;    float: left; text-align: center;">
          <img name="{$paciente->id}" id="imgMostarActualizarAnamnesis"  src="img/consultar.png" align="CENTER"  style="cursor:pointer"
          height="30" width="30"/>
          <img name="{$paciente->id}" id="imgPdfAnamnesis"  src="img/pdf.png" align="CENTER"  style="cursor:pointer"
          height="30" width="30"/>
          <img name="{$paciente->id}" id="imgMostrarEliminarAnamnesis"  src="img/eliminar.png" align="CENTER"  style="cursor:pointer"
          height="30" width="30"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>



