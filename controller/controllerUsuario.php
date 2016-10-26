

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/usuario.php');




class controllerUsuario {

    private $db; 
    private $request;
    private $accion;

 // constructor
    function __construct($request) {
       $this->request = $request;
      if (isset($request['accion'])) {
                                      $this->accion = $request['accion'];
                                    }
      else {
            $this->accion ="";
          }
   }   
 //


// traerFormInicio
   public function mostrarHome()
   {
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->display('home.tpl');
   }



//Funcion que guardar los Usuario.
    public function guardarUsuario()
   {
        
     //ACCESO A DATOS
    $usu = new Usuario('usuarios');
    if (isset($this->request['usuario']))
    {
    $usu->load("id=".$_SESSION['id']);
    }

    $usu->usuario=$this->request['usuario'];
    $usu->password=$this->request['nuevapassword'];
    $usu->fechamodificacion=date('Y-m-d');
    
    
    if($usu->save()){
        $this->cerrarSesion ();
       header('Location: /appnutri/index.php');
    }else    echo'<script> 
                    alert("Error. No se pudo cerrar la conexion")  
                    window.location="/appnutri/index.php";
                 </script>';
  
   }


 

// Elimina Usuario
   public function eliminarUsuario($idUsuario)
   {
    
    //ACCESO A DATOS
      $db = getConexion();
      $db->Execute("DELETE FROM usuarios WHERE id='".$idUsuario."'");

   }

//Actualiza mediciones Antropometricas   
    public function mostrarActualizarUsuario()
   {
     //PRESENTACION
 
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    
    $smarty->assign('usuario',$_SESSION['user']);
    $smarty->assign('password',$_SESSION['pass']);


    $smarty->display('actualizarUsuario.tpl');

   }
   


public function cerrarSesion(){
    
    
session_start();
if(session_destroy())
          header('Location: /appnutri/index.php');
else    echo'<script> 
                      alert("Error. No se pudo cerrar la conexion")  
                      window.location="/appnutri/index.php";
                    </script>';
}



// router
 public function router(){
if (isset($_REQUEST['modulo']))
{
    {
}
 switch ($this->accion) 
  {
    
    case 'guardarUsuario': {
    
                                $this->guardarUsuario();
                                break;
                                } 
    
    case 'mostrarActualizarUsuario': {
                            $this->mostrarActualizarUsuario();
                            break;
                          }
    
    case 'CerrarSesion':{
         $this->cerrarSesion();
        break;
    }                     
        

  } 
}
   
}
}

?>

