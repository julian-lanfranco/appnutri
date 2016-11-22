<form  id="recordatorio" method="post"> 

<div class="row">
<div class="col-md-12">
<div class="container-fluid">

  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >

<h3>Nuevo Recordatorio</h3>
</div>
</div>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;"> 
<div class="col-md-6">
Hora Despertado
<input type="time"  id="horadespertado"  name="horadespertado" required>
</div>
<div class="col-md-6">
Hora Acostado    
<input type="time"  id="horadormido" name="horadormido" required>
</div>
</div>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;"> 
<a id="agregarCampo" class="btn btn-success btn-block href="#">Agregar Ingesta</a>
</div>

<div class="row">
<div class="container-fluid">
<div  class="col-md-6">



<input type="hidden" class="form-control" id="paciente" name="paciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name ="idclub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="modulo" name="modulo" value="recordatorio24">

<!--
<input type="hidden" class="form-control" id="accion" name="accion" value="btnCreaRecordatorio24"> 
-->




<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left; height:300px; width:100%">
<tr style="">
<td style="width: 500px;    overflow-y: auto; float: left;
                            background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<div id="contenedor">

    <div class="added">

      <select name="tipoDeIngesta[]" id="tipoDeIngesta[]">
      <option label="desayuno" value="desayuno">DESAYUNO</option>
    <option label="mediaManiana" value="mediaManiana">MEDIA MAÑANA</option>
      <option label="almuerzo" value="almuerzo">ALMUERZO</option>
      <option label="merienda" value="merienda">MERIENDA</option>
  <option label="colacion" value="colacion">COLACION</option>
  <option label="cena" value="cena">CENA</option>

      </select>   

      <select name="alimento[]" id="alimento[]">
      
      <option label="leche" value="lacteosEnteros">LACT. ENTE</option>
      <option label="harina" value="lacteosDescremados">LACT. DESC.</option>
      <option label="quesos" value="quesos">QUESOS</option>
      <option label="huevos" value="huevos">HUEVOs</option>
      <option label="carneGrasa" value="carneGrasa">CARNE GRASA</option>
      <option label="carneMagra" value="carneMagra">CARNE MAGRA</option>
      <option label="vegetalesA" value="vegetalesA">VEGET. A</option>
      <option label="vegetalesB" value="vegetalesB">VEGET. B</option>
      <option label="vegetalesC" value="vegetalesC">VEGET. C</option>
      <option label="frutas" value="frutas">FRUTAS</option>
      <option label="frutasSecas" value="frutasSecas">FRUT. SECAS</option>
      <option label="granosCereales" value="granosCereales">GRANOS/CER.</option>
      <option label="legumbres" value="legumbres">LEGUMBRES</option>
      <option label="panSinGrasa" value="panSinGrasa">PAN GRASA</option>
      <option label="pangalle" value="pangalle">PAN/GALLE</option>
      <option label="carboGrasa" value="carboGrasa">CARBOGRASAS</option>
      <option label="azucar" value="azucar">AZUCAR</option>
      <option label="dulcesMielMermelada" value="dulcesMielMermelada">DULCES</option>
      <option label="gaseosasJugo" value="gaseosasJugo">GASE./JUGO</option>
      <option label="aceite" value="aceite">ACEITE</option>
      <option label="cremaMantecaMayo" value="cremaMantecaMayo">CREMA/MANTE</option>

      </select>

        <input type="text" name="cantidad[]" id="cantidad[]" placeholder="gramos" size="2" required />
         <input type="time" name="hora[]" id="hora[]" placeholder="hora" size="2" required/>
        <a href="#" class="eliminar">&times;</a>

    </div>
</div>
      
      
         </td>
      </tr>
   </tbody>  
  </table>    
</div>


   <script type="text/javascript" src="js/funcionesRecordatorioDinamico.js"></script>
<div  class="col-md-5 col-md-offset-1">
<div id="graficaRecordatorio">
<img src="/appnutri/img/fondoBlanco.jpg" align="right"  style="cursor:pointer" height="300px" width="100%" title="Nuevo Paciente"/>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<div class="col-md-4 col-md-offset-2"  > 

      <input id="btnCreaRecordatorio24"  class="btn btn-default btn-block "  type="submit"  value="Crear">

</div>
<div class="col-md-4 " >
      <input type="button" class="btn btn-default btn-block " id="btnCancelarCrearRecordatorio24" value="Cancelar">
</div>

</div>
</div>
</div>
</div>
</form>