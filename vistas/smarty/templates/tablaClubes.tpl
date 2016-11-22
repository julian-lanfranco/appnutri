  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >
  <h2>Listado de Clubes</h2>
  </div>
  </div>

  <div class="row" style="background-color:white;
                          padding-top:10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >

 <label class="col-sm-2">Buscar Club:</label>
 <div class="col-sm-4">
    <input type="text" class="form-control" id="cadenaClub" name="cadenaClub" value="{$cadena}" title="Ingrese el nombre del club"  pattern="[A-Za-z]">
 </div>   
</div>
</div>
  
<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  <p>Seleccione un club para cualquier consulta:</p>            

  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 33%;
    float: left;">Id</th>
        <th style="width: 33%;
    float: left;">Nombre</th>
        <th style="width: 33%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$clubes item=club}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" >{$club->id}    </td>
        <td style="width: 33%;    float: left;" >{$club->nombre}</td>
        <td style="width: 33%;    float: left;"><img name="{$club->id}" id="imgMostarActualizarClub" src="img/editar.png" align="CENTER" style="cursor:pointer" height="30" width="30"/>
            <img name="{$club->id}" id="imgMostrarEliminarClub"  src="img/eliminar.png" align="CENTER" style="cursor:pointer" height="30" width="30"/>
            <img name="{$club->id}" id="imgMostrarConsultarClub"  src="img/consultar.png" align="CENTER" style="cursor:pointer" height="30" width="30"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>




