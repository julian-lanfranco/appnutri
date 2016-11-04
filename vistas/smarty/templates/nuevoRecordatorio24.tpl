<h2>Nueva Recordatorio 24 hs Paciente: {$nombre} </h2>

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 300px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
<form  id="recordatorio" method="post"> 

<input type="hidden" class="form-control" id="paciente" name="paciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name ="idclub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="modulo" name="modulo" value="recordatorio24">
<input type="hidden" class="form-control" id="accion" name="accion" value="btnCreaRecordatorio24"> 

  <br>paciente: {$idPaciente} <br>

      
      <label>Hora de Despertar:
      <input type="text" class="form-control" id="horadespertado" name="horadespertado" required  value="">
      </label>
      
  
         <label>Hora de Dormir:  
         <input type="text" class="form-control" id="horadormido" name="horadormido" value="">
             </label>

<h4>Alimentos del Desayuno<h4>
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
      
      <option label="leche" value="lacteosEnteros">LACTEOS ENTEROS</option>
      <option label="harina" value="lacteosDescremados">LACTEOS DESCREMADOS</option>
      <option label="quesos" value="quesos">QUESOS</option>
      <option label="huevos" value="huevos">HUEVOs</option>
      <option label="carneGrasa" value="carneGrasa">CARNE CON GRASA</option>
      <option label="carneMagra" value="carneMagra">CARNE MAGRA</option>
      <option label="vegetalesA" value="vegetalesA">VEGETALES A</option>
      <option label="vegetalesB" value="vegetalesB">VEGETALES B</option>
      <option label="vegetalesC" value="vegetalesC">VEGETALES C</option>
      <option label="frutas" value="frutas">FRUTAS</option>
      <option label="frutasSecas" value="frutasSecas">FRUTAS SECAS</option>
      <option label="granosCereales" value="granosCereales">GRANOS Y CEREALES</option>
      <option label="legumbres" value="legumbres">LEGUMBRES</option>
      <option label="panSinGrasa" value="panSinGrasa">PAN SIN GRASA</option>
      <option label="pangalle" value="pangalle">PAN / GALLE</option>
      <option label="carboGrasa" value="carboGrasa">CARBOGRASAS</option>
      <option label="azucar" value="azucar">AZUCAR</option>
      <option label="dulcesMielMermelada" value="dulcesMielMermelada">DULCES/MIEL/MERMELADA</option>
      <option label="gaseosasJugo" value="gaseosasJugo">GASEOSAS JUGO</option>
      <option label="aceite" value="aceite">ACEITE</option>
      <option label="cremaMantecaMayo" value="cremaMantecaMayo">CREMA / MANTENCA / MAYO</option>

      </select>

        <input type="text" name="cantidad[]" id="cantidad[]" placeholder="gramos"/>
         <input type="text" name="hora[]" id="hora[]" placeholder="hora"/>
        <a href="#" class="eliminar">&times;</a>

    </div>
</div>
      
      
         </td>
      </tr>
   </tbody>  
  </table>    

      <button id="btnCreaRecordatorio24"  type="submit" form="recordatorio" class="btn btn-default">Crear</button>

      <button id="btnCancelarCrearRecordatorio24" class="btn btn-default">Cancelar</button>

     </form>
   <script type="text/javascript" src="js/funcionesRecordatorioDinamico.js"></script>