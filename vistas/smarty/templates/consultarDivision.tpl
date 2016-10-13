  <h2>Consulta Division</h2>
 <table class="table table-striped header-fixed" style="width: 100%;" >
<tbody style="display: block;  overflow-y: auto;    float: left;height: 600px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
          

      <label class="col-sm-4">Id de la  Division:</label>
      <div class="col-sm-8">
      <input type="text" class="form-control" id="idDivision" name="idDivision" value="{$idDivision}" readonly>
      </div>
      
      <br><br><br>

      <label class="col-sm-4">Id del Club:</label>
      <div class="col-sm-8">
      <input type="text" class="form-control" id="idClub" name="idClub" value="{$idClub}" readonly>
      </div>
      <br><br><br>
      
<label class="col-sm-4">Division:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="nombre" name="nombre" value="{$nombre}" required pattern="^[a-zA-Z-\s]+" title="Ingrese la nombre de la division." readonly>
</div>
<br><br><br>      
      

<label class="col-sm-4">Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="contacto" name="contacto" value="{$contacto}" required pattern="^[a-zA-Z-\s]+" title="Ingrese la nombre de la persona de contacto" readonly>
</div>
<br><br><br>

<label class="col-sm-4">Telefono de Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="telefono" name="telefono" value="{$telefono}" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros" readonly>
</div>
<br><br><br>

<label class="col-sm-4">Correo de Contacto:</label>
<div class="col-sm-8">
<input type="email" class="form-control" id="correo" name="correo" value="{$correo}" required  title="Ingrese el correo electronico" readonly>
</div>
<br><br><br>
<label class="col-sm-4">Entrenador:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="entrenador" name="entrenador" value="{$entrenador}" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre del entrenador. Solo letras" readonly>
</div>
<br><br><br>
<label class="col-sm-4">Preparador Fisico:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="preparador" name="preparador" value="{$preparador}" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre de preparador fisico. Solo letras" readonly>
</div>
<br><br><br>
<div class="form-group" align="center">
    <button id="btnImprimirConsultaDivision" class="btn btn-default">Imprimir</button>
    <button id="btnVolverConsultaDivision" class="btn btn-default">Volver</button>
</div>    
    </td>
      </tr>
   </tbody>  
  </table>   