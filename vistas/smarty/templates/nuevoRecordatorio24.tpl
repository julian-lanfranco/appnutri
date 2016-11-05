<div class="container-fluid">
<div class="row">
<h6>Nuevo Recordatorio 24hrs. : {$nombre} </h6>
<div  class="col-md-6">
<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:1500px">
     <tr style="">
      <td style="width: 100%;    float: left;" >


<form  id="recordatorio" method="post"> 

Hora Despertado:
<input type="text"  id="horadespertado"  name="horadespertado" required>
<br><br>
Hora Acostado    :
<input type="text"  id="horadormido" name="horadormido" required>
<br>


<input type="hidden" class="form-control" id="paciente" name="paciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name ="idclub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="modulo" name="modulo" value="recordatorio24">

<!--
<input type="hidden" class="form-control" id="accion" name="accion" value="btnCreaRecordatorio24"> 
-->


<h4>Alimentos<h4>
<a id="agregarCampo" class="btn btn-info" href="#">Agregar Alimento</a>
<div id="contenedor">
    <div class="added">

      <select name="tipoDeIngesta[]" id="tipoDeIngesta[]">
      <option label="desayuno" value="desayuno">DESAYUNO</option>
    <option label="mediaManiana" value="almuerzo">MEDIA MAÑANA</option>
      <option label="almuerzo" value="almuerzo">ALMUERZO</option>
      <option label="merienda" value="cena">MERIENDA</option>
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

        <input type="text" name="cantidad[]" id="cantidad[]" placeholder="gramos" size="2" />
         <input type="text" name="hora[]" id="hora[]" placeholder="hora" size="2" />
        <a href="#" class="eliminar">&times;</a>

    </div>
</div>
      
      
         </td>
      </tr>
   </tbody>  
  </table>    



     </form>

   <script type="text/javascript" src="js/funcionesRecordatorioDinamico.js"></script>
   </div>
<div  class="col-md-6">
<div id="graficaRecordatorio">
<img src="/appnutri/img/fondoBlanco.jpg"/>
</div>
  </div>

</div>
</div>
      <button id="btnCreaRecordatorio24"  type="submit" >Crear</button>

      <button id="btnCancelarCrearRecordatorio24" >Cancelar</button>