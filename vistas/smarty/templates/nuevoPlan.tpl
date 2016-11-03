<form  id="plan" name="plan" method="post"> 
<div class="container-fluid">
<div class="row">
<h6>Nueva Plan Alimentario : {$nombre} </h6>

<div  class="col-md-6">

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:1500px">
     <tr style="">
      <td style="width: 100%;    float: left;" >



<input type="hidden" class="form-control" id="paciente" name="idPaciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name ="idclub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="modulo" name="modulo" value="planes">
<h4>Alimentos</h4>
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
        <a href="#" class="eliminar">&times;</a></div></div></td></tr></tbody></table>    
<br>
<button id="btnCrearPlan">Crear</button>
<button id="btnCancelarCrearRecordatorio24" >Cancelar</button>
</div>
<div  class="col-md-6">
<div id="graficaRecordatorio">
<img src="/appnutri/img/fondoBlanco.jpg"/>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12">
<table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 14%;
    float: left;">#</th>
        <th style="width: 14%;
    float: left;">Desayuno</th>
        <th style="width: 14%;
    float: left;">Med. Mañana</th>
            <th style="width: 14%;
    float: left;">Almuerzo</th>
        <th style="width: 14%;
    float: left;">Merienda</th>
        <th style="width: 14%;
    float: left;">Colacion</th>
        <th style="width: 14%;
    float: left;">Cena</th>
      </tr>

    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">

      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 14%;    float: left;" >Lunes </td>
        <td style="width: 14%;    float: left;" ><textarea name="lunes_desayuno" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="lunes_med_maniana" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="lunes_almuerzo" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="lunes_merienda" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="lunes_colacion" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="lunes_cena" rows="2" cols="18" style="resize:none;"></textarea> </td>
      </tr>

        <tr style="width: 100%;     display: inline-table;">
        <td style="width: 14%;    float: left;" >Martes </td>
        <td style="width: 14%;    float: left;" ><textarea name="martes_desayuno" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="martes_med_maniana" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="martes_almuerzo" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="martes_merienda" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="martes_colacion" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="martes_cena" rows="2" cols="18" style="resize:none;"></textarea> </td>
      </tr>
        <tr style="width: 100%;     display: inline-table;">
        <td style="width: 14%;    float: left;" >Miercoles </td>
        <td style="width: 14%;    float: left;" ><textarea name="miercoles_desayuno" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="miercoles_med_maniana" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="miercoles_almuerzo" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="miercoles_merienda" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="miercoles_colacion" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="miercoles_cena" rows="2" cols="18" style="resize:none;"></textarea> </td>
      </tr>
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 14%;    float: left;" >Jueves </td>
        <td style="width: 14%;    float: left;" ><textarea name="jueves_desayuno" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="jueves_med_maniana" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="jueves_almuerzo" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="jueves_merienda" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="jueves_colacion" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="jueves_cena" rows="2" cols="18" style="resize:none;"></textarea> </td>
      </tr>

        <tr style="width: 100%;     display: inline-table;">
        <td style="width: 14%;    float: left;" >Viernes </td>
        <td style="width: 14%;    float: left;" ><textarea name="viernes_desayuno" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="viernes_med_maniana" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="viernes_almuerzo" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="viernes_merienda" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="viernes_colacion" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="viernes_cena" rows="2" cols="18" style="resize:none;"></textarea> </td>
      </tr>
        <tr style="width: 100%;     display: inline-table;">
        <td style="width: 14%;    float: left;" >Sabado </td>
        <td style="width: 14%;    float: left;" ><textarea name="sabado_desayuno" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="sabado_med_maniana" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="sabado_almuerzo" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="sabado_merienda" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="sabado_colacion" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="sabado_cena"  rows="2" cols="18" style="resize:none;"></textarea> </td>
      </tr>
        <tr style="width: 100%;     display: inline-table;">
        <td style="width: 14%;    float: left;" >Domingo </td>
        <td style="width: 14%;    float: left;" ><textarea name="domingo_desayuno" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="domingo_med_maniana" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="domingo_almuerzo" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="domingo_merienda" rows="2" cols="18" style="resize:none;"></textarea> </td>
        <td style="width: 14%;    float: left;" ><textarea name="domingo_colacion" rows="2" cols="18" style="resize:none;"></textarea></td>
        <td style="width: 14%;    float: left;"><textarea name="domingo_cena" rows="2" cols="18" style="resize:none;"></textarea> </td>
      </tr>

    </tbody>  
  </table>

     
    </div>
  </div>
</div>
 </form>
<script type="text/javascript" src="js/funcionesModuloPlanesDinamico.js"></script>