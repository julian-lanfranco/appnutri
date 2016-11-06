<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <h3>
        Subir Respaldo.
      </h3>
<form id="formSubirRespaldo" enctype="multipart/form-data"  method="POST" >
<input name="accion" type="hidden" value="subirRespaldo"/>
<input name="modulo" type="hidden" value="sistema"/>
          
          <label for="detalleRespaldo">
            Detalle:
          </label>
          <br>

<textarea rows="4" cols="50" name="detalleRespaldo" id="detalleRespaldo">

</textarea>
<input name="uploadedfile" type="file" />

<input type="submit" value="Subir archivo"/>

</form>
    </div>
  </div>
</div>
<script src="http://malsup.github.com/jquery.form.js"></script> 
<script type="text/javascript" src="js/sistema/funcionesSubirRespaldoDinamico.js"></script>


