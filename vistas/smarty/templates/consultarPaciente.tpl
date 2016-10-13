<h2>Consulta Paciente</h2>
 <table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 500px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >

<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$idDivision}">
<input type="hidden" class="form-control" id="idClub" name="idClub" value="{$idClub}"> 
   
      <label class="col-sm-1">Id del Paciente:</label>
      <div class="col-sm-3">
          <input type="text" class="form-control" id="idPaciente" name="idPaciente" value="{$idPaciente}" readonly>
      </div> 
      
      <label class="col-sm-1">Nombre:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="nombre" name="nombre" value="{$nombre}" readonly>
      </div>
      
      <label class="col-sm-1">Apellido:</label>
      <div class="col-sm-2">
      <input type="text" class="form-control" id="apellido" name="apellido" value="{$apellido}" readonly>
      </div>
 <br><br><br>     
      <label class="col-sm-1">DNI:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="dni" name="dni" value="{$dni}" readonly>
      </div>
      
      <label class="col-sm-1">Direccion:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="direccion" name="direccion" value="{$direccion}" readonly>
      </div>
      
      <label class="col-sm-1">Telefono:</label>
      <div class="col-sm-2">
      <input type="text" class="form-control" id="telefono" name="telefono" value="{$telefono}" readonly>
      </div>
 <br><br> <br>    
      <label class="col-sm-1">Obra Social:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="obra" name="obra" value="{$obra}" readonly>
      </div>
      
      <label class="col-sm-1">Nacimiento:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="nacimiento" name="nacimiento" value="{$nacimiento}" readonly>
      </div>
      
      <label class="col-sm-1">Correo Electronico:</label>
      <div class="col-sm-2">
      <input type="email" class="form-control" id="correo" name="correo" value="{$correo}" readonly>
      </div>
  <br><br><br>    
      <label class="col-sm-1">Medico de Cabecera:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="medico" name="medico" value="{$medico}" readonly>
      </div>
      
      
      <label class="col-sm-1">Ocupacion:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="ocupacion" value="{$ocupacion}" readonly>
      </div>
 <br><br><br><br>      
      <label class="col-sm-1">Motivo de la Consulta:</label>
      <div class="col-sm-2">
      <textarea rows="4" cols="80" id="motivo" form="usrform" readonly>
     {$motivo}
     </textarea>
      </div>
      

<br><br><br>
 <br><br>
 <div class="form-group" align="center">
    <input type="button" id="btnImprimirConsultaPaciente" name="btnImprimirConsultaPaciente" class="btn btn-default" value="Imprimir"/>
    <input type="button" id="btnVolverConsultaPaciente" name="btnVolverConsultaPaciente" class="btn btn-default" value="Volver">
 </div>
 
        </td>
      </tr>
   </tbody>  
  </table> 