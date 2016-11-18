  <h4>Listado de Respaldos</h4>

  
  <p>Seleccione un respaldo para restaurar:</p>            

  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 5%;
    float: left;">Id</th>
        <th style="width: 15%;
    float: left;">Fecha</th>
        <th style="width: 30%;
    float: left;">Nombre</th>
        <th style="width: 30%;
    float: left;">Detalle</th>      
        <th style="width: 20%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$respaldos item=respaldo}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 5%;    float: left;" >{$respaldo->id}</td>
        <td style="width: 15%;    float: left;" >{$respaldo->fecha}</td>
        <td style="width: 30%;    float: left;" >{$respaldo->nombre}</td>        
        <td style="width: 30%;    float: left;" >
        <textarea rows="2" cols="40" name="detalleRespaldo" id="detalleRespaldo" disabled>
            {$respaldo->detalle}
          </textarea>
        </td>
        <td style="width: 20%;    float: left;">
            <img name="{$respaldo->id}" id="imgEliminarRespaldo"  src="img/eliminar.png" align="CENTER" style="cursor:pointer" height="30" width="30"/>
           <a href="/appnutri/respaldos/{$respaldo->nombre}"> 
           <img name="{$respaldo->id}" id="imgDescargarRespaldo"  src="img/descargar.png" align="CENTER" style="cursor:pointer" height="30" width="30"/>
           </a>

        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>




