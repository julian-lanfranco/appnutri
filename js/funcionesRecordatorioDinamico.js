$(document).ready(function() {

    var MaxInputs       = 20; //Número Maximo de Campos
    var contenedor       = $("#contenedor"); //ID del contenedor
    var AddButton       = $("#agregarCampo");


    //var x = número de campos existentes en el contenedor
    var x = $("#contenedor div").length + 1;
    var FieldCount = x-1; //para el seguimiento de los campos

    $(AddButton).click(function (e) {
        if(x <= MaxInputs) //max input box allowed
        {
            FieldCount++;
            //agregar campo
            $(contenedor).append(
                                '<div class="added">'+
                                '<select name="tipoDeIngesta[]" id="tipoDeIngesta[]">'+
                                '<option label="desayuno" value="desayuno">DESAYUNO</option>'+
                                '<option label="merdiaManiana" value="mediaManiana">MEDIA MAÑANA</option>'+
                                '<option label="almuerzo" value="almuerzo">ALMUERZO</option>'+
                                '<option label="merienda" value="merienda">MERIENDA</option>'+
                               '<option label="colacion" value="colacion">COLACION</option>'+
                               '<option label="cena" value="cena">CENA</option>'+
                                '</select>'+  
                                '<select name="alimento[]" id="alimento[]">'+
      '<option label="leche" value="lacteosEnteros">LACTEOS ENTEROS</option>'+
      '<option label="harina" value="lacteosDescremados">LACTEOS DESCREMADOS</option>'+
      '<option label="cereales" value="quesos">QUESOS</option>'+
     '<option label="huevos" value="huevos">HUEVOs</option>'+
      '<option label="carneGrasa" value="carneGrasa">CARNE CON GRASA</option>'+
      '<option label="carneMagra" value="carneMagra">CARNE MAGRA</option>'+
      '<option label="vegetalesA" value="vegetalesA">VEGETALES A</option>'+
      '<option label="vegetalesB" value="vegetalesB">VEGETALES B</option>'+
      '<option label="vegetalesC" value="vegetalesC">VEGETALES C</option>'+
      '<option label="frutas" value="frutas">FRUTAS</option>'+
      '<option label="frutasSecas" value="frutasSecas">FRUTAS SECAS</option>'+
      '<option label="granosCereales" value="granosCereales">GRANOS Y CEREALES</option>'+
      '<option label="legumbres" value="legumbres">LEGUMBRES</option>'+
      '<option label="panSinGrasa" value="panSinGrasa">PAN SIN GRASA</option>'+
      '<option label="pangalle" value="pangalle">PAN / GALLE</option>'+
      '<option label="carboGrasa" value="carboGrasa">CARBOGRASAS</option>'+
      '<option label="azucar" value="azucar">AZUCAR</option>'+
      '<option label="dulcesMielMermelada" value="dulcesMielMermelada">DULCES/MIEL/MERMELADA</option>'+
      '<option label="gaseosasJugo" value="gaseosasJugo">GASEOSAS JUGO</option>'+
      '<option label="aceite" value="aceite">ACEITE</option>'+
      '<option label="cremaMantecaMayo" value="cremaMantecaMayo">CREMA / MANTENCA / MAYO</option>'+
      '</select>'+

                                
                                '<input type="text" name="cantidad[]" id="cantidad[]" placeholder="gramos"/>'+
                                '<input type="text" name="hora[]" id="hora[]" placeholder="hora"/>'+
                                '<a href="#" class="eliminar">&times;</a>'+
                                '</div>');
            x++; //text box increment
        }
        return false;
    });

    $("body").on("click",".eliminar", function(e){ //click en eliminar campo
        if( x > 1 ) {
            $(this).parent('div').remove(); //eliminar el campo
            x--;
        }
        return false;
    });



$("#recordatorio").submit(function(e) {

    $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=recordatorio24&accion=btnCreaRecordatorio24",
           data: $("#recordatorio").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});
                  

});