<div class="row">
<div class="col-md-12">


  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 0px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
   <h2>Subir Respaldo</h2>
  </div>
</div>
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;
                          width: 900px">

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
  </div>
</div>
<script src="http://malsup.github.com/jquery.form.js"></script> 
<script type="text/javascript" src="js/sistema/funcionesSubirRespaldoDinamico.js"></script>


