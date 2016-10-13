/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
$("#club").submit(function(e) {
        $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=clubes&accion=btnCrearClub",
           data: $("#club").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});




});
