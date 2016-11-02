

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('fpdf181/generador.php');



class controllerSistema {

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


   public function mostrarHome()
   {
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('usuario',$_SESSION['user']);
    $smarty->display('home.tpl');
   }
//

// traerFormNuevoClub   
   public function mostrarCrearRespaldo()
      {
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->display('crearRespaldo.tpl');
   }
//
  
// crearClub
  public function crearClub()
   {
       //ACCESO A DATOS

    $club = new Club('clubes');

    
    $club->nombre=$this->request['nombre'];
    $club->tipo=$this->request['tipo'];
    $club->telefono=$this->request['telefono'];
    $club->direccion=$this->request['direccion'];
    $club->contacto=$this->request['personaContacto'];
    $club->mail=$this->request['correoElectronico'];
    $club->save();

   }
//
// elimnarClub   
   public function eliminarClub($idClub)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM clubes WHERE id='".$idClub."'");

   }
//

// listarClubes
   public function mostrarTablaClubes()
   {
    //ACCESO A DATOS
    $club = new Club('clubes');
    $clubesArray = $club->Find("1 order by id");    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('clubes',$clubesArray);
    $smarty->display('tablaClubes.tpl');
   } 


    public function buscarClubesPorCadena($cadena)
   {
    //ACCESO A DATOS
    $club = new Club('clubes');

    $clubesArray = $club->Find("nombre LIKE '%".$cadena."%' order by id");    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('cadena',$cadena);
    $smarty->assign('clubes',$clubesArray);
    $smarty->display('tablaClubes.tpl');
   }   
   
// traerFormActualizarClub
   public function mostrarActualizarClub($idClub)
   {

       //ACCESO A DATOS
    $club = new Club('clubes');
    $club->load("id=".$idClub);
     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('nombre',$club->nombre);
    $smarty->assign('idClub',$club->id);
    $smarty->assign('tipo',$club->tipo);
    $smarty->assign('telefono',$club->telefono);
    $smarty->assign('direccion',$club->direccion);
    $smarty->assign('personaContacto',$club->contacto);
    $smarty->assign('correoElectronico',$club->mail);

    $smarty->display('actualizarClub.tpl');
   }
//


   // traerFormConsultarClub
   public function mostrarConsultarClub($idClub)
   {

       //ACCESO A DATOS
    $club = new Club('clubes');
    $club->load("id=".$idClub);
     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('nombreClub',$club->nombre);
    $smarty->assign('idClub',$club->id);
    $smarty->display('consultarClub.tpl');
   }

// actualizarClub 
   public function actualizarClub($clubAct)
   {   
       //ACCESO A DATOS
  $club = new Club('clubes');

  $club->id = $clubAct->id;
  $club->nombre = $clubAct->nombre;
  $club->tipo = $clubAct->tipo;
  $club->direccion = $clubAct->direccion;
  $club->contacto = $clubAct->contacto;
  $club->mail = $clubAct->mail;
  $club->telefono = $clubAct->telefono;

  //echo("personaContacto: ".$club->personaContacto." correoElectronico: ".$club->correoElectronico);
  $club->replace();

   }
//
   // traerFormConsultarClub
   public function imprimirClub($idClub)
   {

       //ACCESO A DATOS
    $club = new Club('clubes');
    $club->load("id=".$idClub);
     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirClub($club);
   }


// router
 public function router(){
if (isset($_REQUEST['modulo']))
{
    {
}
 switch ($this->accion) 
  {
    case 'mostrarCrearRespaldo' : {
                          $this->mostrarCrearRespaldo();
                          break;
                          }
                          
    case 'mostrarActualizarClub': {
                            $this->mostrarActualizarClub($this->request['idClub']);
                            break;
                          }

    case 'eliminarClub': {
                            $this->eliminarClub($this->request['idClub']);
                            $this->mostrarTablaClubes();
                            break;
                          }

    case 'mostrarNuevoClub': {

                                $this->mostrarNuevoClub();
                                break;
                                }
                          
    case 'btnActualizarClub': {
                                $clubAct = new Club('clubes');
                                $clubAct->id=$this->request['idClub'];
                                $clubAct->nombre=$this->request['nombre'];
                                $clubAct->tipo=$this->request['tipo'];
                                $clubAct->telefono=$this->request['telefono'];
                                $clubAct->direccion=$this->request['direccion'];
                                $clubAct->contacto=$this->request['personaContacto'];
                                $clubAct->mail=$this->request['correoElectronico'];
                                $this->actualizarClub($clubAct);
                                $this->mostrarTablaClubes();
                                break;
                                }  

    case 'btnCrearClub': {

                                $this->crearClub();
                                $this->mostrarTablaClubes();
                                break;
                                } 
    case 'consultarClub': {     
                                $this->mostrarConsultarClub($this->request['idClub']);
                                break;
                                }
    case 'imprimirConsultaClub': {     
                                $this->imprimirClub($this->request['idClub']);
                                break;
                                }

    case 'buscarClubesPorCadena': {     
                                $this->buscarClubesPorCadena($this->request['cadenaClub']);
                                break;
                                }


    default :{
              $this->mostrarHome();
              break;
              }
  } 
}
else {
            $this->mostrarHome();
              break;
              }



   
}
}

?>

