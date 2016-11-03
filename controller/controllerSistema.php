

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/respaldo.php');
require_once('fpdf181/generador.php');



class controllerSistema {

    private $db; 
    private $request;
    private $accion;
    private $files;

 // constructor
    function __construct($request,$files) {
       $this->request = $request;
       $this->files = $files;
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


   public function mostrarSubirRespaldo()
      {
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->display('subirRespaldo.tpl');
   }

    public function subirRespaldo()

      {  
            var_dump($this->files);
        
      $target_path = "c:/xampp/htdocs/appnutri/respaldos/";
      $target_path = $target_path . basename( $this->files['uploadedfile']['name']); if(move_uploaded_file($this->files['uploadedfile']['tmp_name'], $target_path)) { echo "El archivo ". basename( $this->files['uploadedfile']['name']). " ha sido subido";
      } else{
      echo "Ha ocurrido un error, trate de nuevo!";
      }
      
      
}


//C:\xampp\htdocs\appnutri\respaldos
  
// crearClub
  public function generarRespaldo()
   {
    
    $nombre="respaldo_".date('d-m-Y')."-".time().".sql";
    $ruta="C:\\xampp\mysql\bin\mysqldump.exe --opt --user=root --password= appnutri > C:\\xampp\\htdocs\\appnutri\\respaldos\\".$nombre; 
      system($ruta,$error);

    $respaldo = new Respaldo('respaldos');
    $respaldo->detalle=$this->request['detalleRespaldo'];
    $respaldo->nombre=$nombre;
    $respaldo->fecha=date('Y-m-d');
    $respaldo->save();

 
   }
//
// elimnarClub   
   public function eliminarRespaldo($idRespaldo)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM respaldos WHERE id='".$idRespaldo."'");

   }

   
   public function restaurarRespaldo($idRespaldo)
   {
    $respaldo = new Respaldo('respaldos');
    $respaldo->load("id=".$idRespaldo);

    $nombre=$respaldo->nombre;

    $ruta="C:\\xampp\mysql\bin\mysql.exe --user=root --password= appnutri < C:\\xampp\\htdocs\\appnutri\\respaldos\\".$nombre; 

    system($ruta,$error);

   }
//

// listarClubes
   public function mostrarTablaRespaldos()
   {
    //ACCESO A DATOS
    $respaldo = new Respaldo('respaldos');
    $respaldosArray = $respaldo->Find("1 order by id");    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('respaldos',$respaldosArray);
    $smarty->display('tablaRespaldos.tpl');
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
                          
    case 'generarRespaldo': {
                            $this->generarRespaldo();
                            $this->mostrarTablaRespaldos();
                            break;
                          }

    case 'listarRespaldos': {
                            $this->mostrarTablaRespaldos();
                            break;
                          }



    case 'eliminarRespaldo': {

                                $this->eliminarRespaldo($this->request['idRespaldo']);
                                $this->mostrarTablaRespaldos();
                                break;
                                }


  

      case 'restaurarRespaldo': {

                                $this->restaurarRespaldo($this->request['idRespaldo']);
                                $this->mostrarTablaRespaldos();
                                break;
                                }


                          
    case 'mostrarSubirRespaldo': {


                                $this->mostrarSubirRespaldo();
                                break;
                                }  

    case 'subirRespaldo': {

                                $this->subirRespaldo();
                                $this->mostrarTablaRespaldos();
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

