<?php
require_once('../modelos/conexion.php');
require_once('../modelos/usuario.php');
require_once('../recaptcha/recaptchalib.php');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


$privatekey = "6LdvJwoUAAAAAGCHmBMpCxEwvb8ORTmfnEwBoeHo";
# the response from reCAPTCHA
$resp = null;
$error = null;

if ($_POST["recaptcha_response_field"]) {
        $resp = recaptcha_check_answer ($privatekey,
                                        $_SERVER["REMOTE_ADDR"],
                                        $_POST["recaptcha_challenge_field"],
                                        $_POST["recaptcha_response_field"]);

        if ($resp->is_valid) {
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
             session_start();
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
    
}else{
              echo'<script> 
                      alert("Error. No fue enviado el usuario y contrase\u00f1a")  
                      window.location="/appnutri/index.php";
                    </script>';
    }

        } else {
                # set the error code so that we can display it
                $error = $resp->error;
                  echo'<script> 
                      alert("Error. El captcha no es correcto")  
                      window.location="/appnutri/index.php";
                    </script>';
        }
}


?>
