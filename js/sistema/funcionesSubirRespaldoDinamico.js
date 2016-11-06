/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {

//alert("Thank you for your comment!"); 

    $(function(){
        $("#formSubirRespaldo").on("submit", function(e){
            e.preventDefault();
            var f = $(this);
            var formData = new FormData(document.getElementById("formSubirRespaldo"));
            //formData.append("dato", "valor");
            //formData.append(f.attr("name"), $(this)[0].files[0]);


                 $.ajax({
                               
                            type: "POST",
                                url: "http://"+ambito+"/appnutri/?modulo=sistema&accion=subirRespaldo",
                                data: formData,
                                cache: false,
                				contentType: false,
	     						processData: false,
                                success: function(a) {
                                                    $('#central').html(a); 
                                                        }

                            });

        });
    });
                  

});

