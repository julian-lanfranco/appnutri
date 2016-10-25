//Funciones Js del Modulo Usuarios 

//cuando escribe la contraseña actual
        $("#central").on("change", "#password", function(){
        
                var passoriginal=$("#passoriginal").val();
                var password=$("#password").val();
                
                if(passoriginal !== password){
                    alert("La contraseña actual no es la correcta, vuelva a ingresarla");        
                    document.getElementById('password').value= '';   
                    document.getElementById('password').focus();
            
            
            }
     });
     
 //cuando escribe la nueva contraseña por segunda vez
        $("#central").on("change", "#nuevapassword2", function(){
        
                var nuevapassword2=$("#nuevapassword2").val();
                var nuevapassword=$("#nuevapassword").val();
                
                if(nuevapassword2 !== nuevapassword){
                    alert("Las contraseñas nuevas no son iguales, vuelva a ingresarla");
                    document.getElementById('nuevapassword2').value= '';    
                    document.getElementById('nuevapassword2').focus();
                  }
     });    
     
