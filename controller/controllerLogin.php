<?php
session_start();
require_once('../modelos/conexion.php');
require_once('../modelos/usuario.php');



if (isset($_POST['captcha'])) {

        if ( $_SESSION['captcha'] == $_POST['captcha']) {
            
            
               if(isset($_POST['usuario'])){
   
        $db = getConexion();
        $res = $db->Execute("select id from usuarios where usuario = '".$_POST['usuario']."' and password = '".$_POST['password']."'");
        $arr = $res->getarray();
        if(count($arr)==1){
        $idUsuario = array_shift($arr[0]);
        }
        if(isset($idUsuario)){
             $usu = new Usuario('usuarios');
             $usu->Load('id='.$idUsuario);
             $usu->ultimoacceso = date('Y-m-d');
             $usu->Save();
             
             $_SESSION['user'] = $usu->usuario;
             $_SESSION['pass'] = $usu->password;
             $_SESSION['id']= $usu->id;
             
             
             
            header("location: ../index.php");
             
         }
         else{
             
                   echo'<script> 
                      alert("Error. Usuario y contrase\u00f1a invalidos")  
                      window.location="/appnutri/index.php";
                    </script>';
         }
    
}
else{
              echo'<script> 
                      alert("Error. No fue enviado el usuario y contrase\u00f1a")  
                      window.location="/appnutri/index.php";
                    </script>';
    }

        } else {
                
                  echo'<script> 
                      alert("Error. El captcha no es correcto")  
                      window.location="/appnutri/index.php";
                    </script>';
        }
}else {
                
                  echo'<script> 
                      alert("Error. El captcha no fue enviado")  
                      window.location="/appnutri/index.php";
                    </script>';
        }


?>
