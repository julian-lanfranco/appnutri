<form  id="division" method="post">
<div class="row">
<div class="col-md-12">
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 0px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
   <h2>Nueva Division</h2>
  </div>
</div>
<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 400px; ">
<tr style="">
<td style="width: 100%; float: left;" >
          
  <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 30px;
                          margin: 10px;
                          width: 800px">

   
<label class="col-sm-4">Nombre:</label>
<div class="col-sm-8">
   <input type="text" class="form-control" id="nombre" name="nombre" value="" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la division.">
</div>
<br><br><br>     
 <label class="col-sm-4">Club:</label>
<div class="col-sm-8">
<select name=clubes class="form-control" id="clubes" required>
    {foreach from=$clubes item=club}
    <option label="{$club->nombre}" value="{$club->id}">{$club->nombre}</option>
    {/foreach}
</select>
</div>  
<br><br><br>

<label class="col-sm-4">Deporte:</label>
<div class="col-sm-8">
<select name=deporte class="form-control" id="deporte" required>
    <option label="futbol" value="futbol">FUTBOL</option>
    <option label="basquet" value="basquet">BASQUET</option>
    <option label="rugby" value="rugby">RUGBY</option>
</select>
</div>  
<br><br><br>

<label class="col-sm-4">Sexo:</label>
<div class="col-sm-8">
<select name=sexo class="form-control" id="sexo">
    <option label="masculino" value="masculino">MASCULINO</option>
    <option label="femenino" value="femenino">FEMENINO</option>
</select>
</div>  
<br><br><br>

<label class="col-sm-4">Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="contacto" name="contacto" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese la nombre de la persona de contacto">
</div>
<br><br><br>

<label class="col-sm-4">Telefono de Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="telefono" name="telefono" value="" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
</div>
<br><br><br>

<label class="col-sm-4">Correo de Contacto:</label>
<div class="col-sm-8">
<input type="email" class="form-control" id="correo" name="correo" value="" required  title="Ingrese el correo electronico">
</div>
<br><br><br>
<label class="col-sm-4">Entrenador:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="entrenador" name="entrenador" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre del entrenador. Solo letras">
</div>
<br><br><br>
<label class="col-sm-4">Preparador Fisico:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="preparador" name="preparador" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre de preparador fisico. Solo letras">
</div>
<br><br><br>
     



         </td>
      </tr>
   </tbody>  
  </table> 

  <div class="form-group" align="center">
    <input type="submit" id="btnCrearDivision" name="btnCrearDivision" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearDivision" name="btnCancelarCrearDivision" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />

</div>
</div>
</div>
</form>
<script type="text/javascript" src="js/divisiones/funcionesAltaDivisionDinamico.js"></script>